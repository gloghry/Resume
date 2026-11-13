#!/usr/bin/env bash
# Encrypt a full bundle of committed local Git refs; see career/storage.md.
set -euo pipefail
umask 077

if [[ $# -ne 3 || ! $3 =~ ^([A-Fa-f0-9]{40}|[A-Fa-f0-9]{64})$ ]]; then
    echo "Usage: bash backup-private.sh <repo> <backup-directory> <GPG-fingerprint>" >&2
    exit 1
fi
for dependency in git gpg realpath mktemp; do
    command -v "$dependency" >/dev/null
done
repo=$(git -C "$1" rev-parse --show-toplevel)
repo=$(realpath "$repo")
backup_directory=$(realpath -e "$2")
if [[ ! -d $backup_directory || $backup_directory == "$repo" || $backup_directory == "$repo/"* ]]; then
    echo "Choose an existing backup directory outside the source repository." >&2
    exit 1
fi
if [[ $(git -C "$repo" rev-parse --is-shallow-repository) != false ]]; then
    echo "A shallow clone is not a full-history backup source." >&2
    exit 1
fi
if git -C "$repo" config --get extensions.partialClone >/dev/null ||
   git -C "$repo" config --get-regexp '^remote\..*\.promisor$' >/dev/null; then
    echo "Use a complete clone, not a partial clone, for backup." >&2
    exit 1
fi
if [[ -n $(git -C "$repo" status --porcelain --untracked-files=all) ]]; then
    echo "Commit intended records before backup; local changes are not included." >&2
    exit 1
fi
git -C "$repo" symbolic-ref -q HEAD >/dev/null
git -C "$repo" rev-parse --verify HEAD >/dev/null

# The full fingerprint must identify an already imported, trusted recipient.
# Do not override trust checks or provide a passphrase on the command line.
encrypted=$(mktemp "$backup_directory/career-$(date -u +%Y%m%dT%H%M%SZ)-XXXXXX.bundle.gpg")
completed=false
cleanup() {
    if [[ $completed != true ]]; then
        rm -f -- "$encrypted"
    fi
}
trap cleanup EXIT
git -C "$repo" bundle create - --all |
    gpg --batch --yes --encrypt --recipient "$3" --output "$encrypted"
completed=true
echo "Encrypted committed-history snapshot: $encrypted"
echo "Ignored files, LFS payloads, submodule contents, and GitHub metadata are not included."
echo "Copy to independent storage and verify a restore before relying on this backup."
