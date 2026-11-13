#!/usr/bin/env bash
# Update main and start an issue branch without moving uncommitted work.
set -euo pipefail

if [[ $# -ne 2 || ! $1 =~ ^[1-9][0-9]*$ || ! $2 =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    echo "Usage: bash issue-branch.sh <issue-number> <lowercase-slug>" >&2
    exit 1
fi

cd "$(git rev-parse --show-toplevel)"
branch="issue${1}-${2}"
git check-ref-format --branch "$branch" >/dev/null
if [[ -n $(git status --porcelain --untracked-files=normal) ]]; then
    echo "Commit or stash local changes before starting an issue branch." >&2
    exit 1
fi
if git show-ref --verify --quiet "refs/heads/$branch"; then
    echo "Local branch already exists: $branch" >&2
    exit 1
fi

if ! remote_branch=$(git ls-remote --heads origin "refs/heads/$branch"); then
    echo "Could not check branches on origin; stopping." >&2
    exit 1
fi
if [[ -n $remote_branch ]]; then
    echo "Remote branch already exists: $branch" >&2
    exit 1
fi
git fetch origin refs/heads/main:refs/remotes/origin/main
git show-ref --verify "refs/remotes/origin/main" >/dev/null
if git show-ref --verify --quiet refs/heads/main; then
    if ! git merge-base --is-ancestor main origin/main; then
        echo "Local main has commits outside origin/main; reconcile them first." >&2
        exit 1
    fi
    git switch main
    git merge --ff-only origin/main
else
    git switch --track -c main origin/main
fi
git switch -c "$branch"
