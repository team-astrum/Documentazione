#!/usr/bin/env python3
"""Compila i .typ in PDF ed estrae i metadati in _site/manifest.json."""
import json, pathlib, re, subprocess, sys
from datetime import datetime, timezone

ROOT, OUT = pathlib.Path('.'), pathlib.Path('_site')    # Caricamento e ricerca dei file all'interno di GitHub Pages
FONT = ['--font-path', 'Template/Fonts', '--ignore-system-fonts']    # Caricamento del font prescelto "Inter"
MESI = {m: i for i, m in enumerate(
  ['gennaio', 'febbraio', 'marzo', 'aprile', 'maggio', 'giugno', 'luglio',
    'agosto', 'settembre', 'ottobre', 'novembre', 'dicembre'], 1)}


def run(*cmd):
  return subprocess.run(cmd, capture_output=True, text=True)


def to_iso(s):
  """Conversione di date scritte in italiano in formato ISO"""
  if not isinstance(s, str):    # Stringa inesistente
    return None
  m = re.fullmatch(r'(\d{1,2})\s+([a-zà]+)\s+(\d{4})', s)
  if m and m.group(2) in MESI:    # Mese presente nell'enum MESI
    return f'{m.group(3)}-{MESI[m.group(2)]:02d}-{int(m.group(1)):02d}'
  return None


def section_of(rel):
  """Scheda del sito, indexing automatico delle cartelle"""
  for part in rel.parts[1:-1]:    # Suddivisione del percorso
    if part.lower().startswith(('verbali', 'diari')):    # Caso di verbali e diari di bordo, cartelle separate
      return part.replace('-', ' ').replace('_', ' ').capitalize()
  return rel.parts[0] if len(rel.parts) > 1 else 'Altro'    # Caso di cartella non conforme


docs = []
for src in sorted(ROOT.rglob('*.typ')):
  rel = src.relative_to(ROOT)
  if rel.parts[0].startswith('.') or rel.parts[0] == 'Template' or src.name.startswith('_'):    # Salta: cartelle nascoste, /Template e file che inizino con "_"
    continue
  pdf = OUT / rel.with_suffix('.pdf')
  pdf.parent.mkdir(parents=True, exist_ok=True)

  r = run('typst', 'compile', '--root', '.', *FONT, str(src), str(pdf))
  print(f'Compilo {rel} -> {pdf}')
  if r.returncode:
    print(r.stderr, file=sys.stderr)
    sys.exit(1)

  # Metadati dichiarati dal template: estrazione del campo etichettato <info> e creazione manifest.json
  meta = {}
  q = run('typst', 'query', '--root', '.', *FONT, str(src), '<info>', '--field', 'value', '--one')
  if q.returncode == 0 and q.stdout.strip():
    meta = json.loads(q.stdout)

  git_date = run('git', 'log', '-1', '--format=%cs', '--', str(src)).stdout.strip()   # Data di fallback nel caso data del doc non sia valida

  # Compilazione base per entry del manifest.json
  entry = {
    'file': f'/{rel.with_suffix(".pdf").as_posix()}',
    'titolo': meta.get('titolo') or src.stem,
    'baseline': rel.parts[0] if len(rel.parts) > 1 else 'Altro',
    'sezione': section_of(rel),
    'data-modifica': meta.get('data-modifica') or git_date or None,
    'kind': meta.get('categoria'),
    'tipo': (meta.get('tipo') or '').lower() or None
  }

  cat = meta.get('categoria')
  if cat == 'documento' or cat == 'verbale':
    entry.update({
      'versione': meta.get('versione') or '-',   # In bozza o approvato
    })

  if cat == 'documento':
    entry.update({
      'status': meta.get('status') or None,   # In bozza o approvato
    })
  
  docs.append(entry)    # Inserimento entry appena creata

# Output del programma: manifest.json
manifest = {'generated': datetime.now(timezone.utc).isoformat(timespec='seconds'), 'docs': docs}
(OUT / 'manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2), encoding='utf-8')
print(f'Manifest: {len(docs)} documenti')