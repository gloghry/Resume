"""Exercise contact isolation in a disposable copy; needs pdflatex and mutool."""
from pathlib import Path
import shutil
import subprocess
import tempfile

root = Path(__file__).resolve().parents[1]

def run(*args, cwd):
    return subprocess.run(args, cwd=cwd, check=True, capture_output=True).stdout

with tempfile.TemporaryDirectory(prefix='resume-variants-') as folder:
    work = Path(folder)
    for name in ('makefile', 'resume.cls'):
        shutil.copy(root / name, work / name)
    shutil.copytree(root / 'resumes', work / 'resumes')
    # Fail closed when contacts are missing; public build needs no private files.
    missing = subprocess.run(['make', 'private'], cwd=work, capture_output=True)
    assert missing.returncode != 0
    run('make', 'public', cwd=work)
    (work / 'private').mkdir()
    shutil.copy(work / 'resumes/contacts.example.tex', work / 'private/contacts.tex')
    run('make', 'private', cwd=work)
    run('make', 'public', cwd=work)
    markers = ('PRIVATEPHONE5550100', 'private-marker@example.invalid', 'private-link-marker')
    for variant in ('public', 'private'):
        pdf = work / f'build/{variant}/resume.pdf'
        text = run('mutool', 'draw', '-F', 'txt', '-o', '-', str(pdf), cwd=work).decode()
        objects = run('mutool', 'show', str(pdf), 'grep', cwd=work).decode()
        combined = text + objects
        for marker in markers:
            assert (marker in combined) == (variant == 'private'), (variant, marker)
        if variant == 'public':
            assert 'contact@garettloghry.com' in text
            assert 'garettloghry.com' in text
            assert '/URI(tel:' not in objects
        assert 'Software Engineer 1' in text
        run('mutool', 'draw', '-r', '100', '-o', str(work / f'{variant}.png'), str(pdf), cwd=work)
    # A changed private input cannot affect public text, links or metadata.
    (work / 'private/contacts.tex').write_text('\\INVALIDPRIVATECOMMAND\n')
    run('make', 'public', cwd=work)
    # The public input list must exclude private files.
    run('pdflatex', '-recorder', '-interaction=batchmode', '-halt-on-error',
                   '-jobname=resume', '-output-directory=build/public', 'resumes/public.tex', cwd=work)
    assert 'INPUT ./private/' not in (work / 'build/public/resume.fls').read_text()
    shutil.copy(work / 'private.png', '/tmp/resume-private-preview.png')
print('PASS: missing contacts fail closed; public text/links/metadata exclude private markers; public build ignores invalid private input; both variants compile.')
