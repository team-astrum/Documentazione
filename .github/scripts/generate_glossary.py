import re
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]   # radice della repo
OUTPUT = ROOT / "glossario.typ"

# Corpo di una stringa Typst (gestisce le virgolette escapate)
STR = r'"((?:[^"\\]|\\.)*)"'
PATTERN = re.compile(
    r'#G\(\s*' + STR +
    r'\s*,\s*def:\s*' + STR +
    r'(?:\s*,\s*impl:\s*' + STR + r')?'
    r'\s*,?\s*\)',
    re.DOTALL,
)

EADER = '''#import "/Template/tmp-glossario.typ": conf, termine
#show: conf

'''

def extract_glossary():
    """Ritorna {termine_minuscolo: (termine, definizione)}.
    Se lo stesso termine compare più volte vince l'ultima definizione letta."""
    glossary = {}
    for path in sorted(ROOT.rglob("*.typ")):
        rel = path.relative_to(ROOT)
        if rel.name == OUTPUT.name or any(p.startswith(".") for p in rel.parts):
            continue
        text = path.read_text(encoding="utf-8")
        for term, definition, _impl in PATTERN.findall(text):
            term, definition = term.strip(), definition.strip()
            glossary[term.lower()] = (term, definition)
    return glossary


def initial(term):
    """Lettera iniziale maiuscola, senza accenti (È -> E). Se non è una lettera: '#'."""
    first = unicodedata.normalize("NFD", term)[0].upper()
    return first if first.isalpha() else "#"


def generate(glossary):
    groups = {}
    for term, definition in glossary.values():
        groups.setdefault(initial(term), []).append((term, definition))

    out = [HEADER]
    for letter in sorted(groups, key=lambda l: (l == "#", l)):
        out.append(f"= {'\\#' if letter == '#' else letter}\n\n")
        for term, definition in sorted(groups[letter], key=lambda x: x[0].lower()):
            # term e definition sono già corpi di stringhe Typst valide
            out.append(f'#termine("{term}", "{definition}")\n\n')

    OUTPUT.write_text("".join(out), encoding="utf-8")
    print(f"glossario.typ generato: {len(glossary)} termini, {len(groups)} lettere")


if __name__ == "__main__":
    generate(extract_glossary())