---
layout: default
---

## Undoing Git Messes

Undo Working Directory:

* `git stash`
* `git checkout -- .` or `git checkout .`
* `git reset --hard`

Undo Add:

* `git reset --hard` (or `--mixed`, depending on whether you want to wipe out the working directory as well)

Undo Commit:

* `git reset --hard HEAD~1` (or `--mixed` or `--soft`, depending on whether you want to wipe out the staging and working directories as well)
* `git revert`

Undo Push:

* `git revert`, then `git push`
* `git filter-branch ...`
