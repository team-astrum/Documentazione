import re
from pathlib import Path

STR = r'"((?:[^"\\]|\\.)*)"'   # corpo di una stringa Typst (con escape)
PATTERN = re.compile(
    r'#G\(\s*' + STR +
    r'\s*,\s*def:\s*' + STR +
    r'(?:\s*,\s*impl:\s*' + STR + r')?'
    r'\s*,?\s*\)',
    re.DOTALL,
)

def extract_glossary():
    glossary = {}
    for path in sorted(Path(".").rglob("*.typ")):
        if path.name == "glossario.typ" or any(p.startswith(".") for p in path.parts):
            continue
        text = path.read_text(encoding="utf-8")
        for term, definition, impl in PATTERN.findall(text):
            key = term.strip().lower()
            if key in glossary:
                print(f"  Duplicato '{term}' in {path} (sovrascritto)")
            glossary[key] = {
                "term": term.strip(),
                "def": definition.strip(),
                "impl": impl.strip(),
            }
    return glossary

HEADER = '''#import "../../Template/tmp-glossario.typ":
'''

def generate(glossary):
    out = [HEADER]
    for _, d in sorted(glossary.items()):
        # d["..."] è già il corpo di una stringa Typst valida: nessun escape aggiuntivo
        out.append(f'''
#block(width: 100%, inset: 10pt, radius: 6pt, fill: rgb("#f8f9fa"), stroke: 1pt + rgb("#e9ecef"))[
  #text(weight: "bold", size: 1.2em)[#("{d["term"]}")]
  #v(4pt)
  *Definizione:* #("{d["def"]}")
''')
        if d["impl"]:
            out.append(f'''  #v(2pt)
  *Implementazione:* #("{d["impl"]}")
''')
        out.append("]\n#v(8pt)\n")

    Path("glossario.typ").write_text("".join(out), encoding="utf-8")
    print(f" glossario.typ generato con {len(glossary)} termini")

if __name__ == "__main__":
    generate(extract_glossary())