#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

export BASE_BRANCH=$1
export COMMIT_MESSAGE=$2
export BRANCH="$(git rev-parse --abbrev-ref HEAD)"
export TEMP_BRANCH="${BRANCH}_temp"

git checkout "${BASE_BRANCH}"
git fetch
git pull origin "${BASE_BRANCH}"

git checkout -b "${TEMP_BRANCH}"
git merge "${BRANCH}"
git reset "origin/${BASE_BRANCH}"

git add --all
git commit -m "${COMMIT_MESSAGE}"

git branch -D "${BRANCH}"
git branch -m "${TEMP_BRANCH}" "${BRANCH}"

git push origin "${BRANCH}" --force
