# Git - "3 letters of complexity"

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Undo](#undo)
    - [Debugging](#debugging)
    - [Rebasing](#rebasing)
    - [Team Work](#team-work)

<!-- /TOC -->

## Helpful Stuff
### Undo

I find the need to undo things here are easy ways!

Discription                         | Alias             | Command
---                                 | ---               | ---
Undo current changes                | `gu`  `greset`    | `git reset --hard HEAD`
Undo last commit                    | `guc`             | `git reset --soft HEAD~1`
Destages the given <file>           | `grmc`  `destage` | `git rm --cached <file>`
Destages everything                 |                   | `git reset`
Clear the given <file> of changes   | `gclf`  `discard` | `git checkout -- <file>`
Remove all Unstaged Tracked files ONLY  |                   | `git checkout .`
Remove all Unstaged UnTracked files ONLY |                  | `git clean -f`
Remove all Staged Tracked and UnStaged Tracked files ONLY |             | `git reset --hard`
Remove all changes                  |                   | `git stash -u`
Delete a remote branch [details][1] |                   | `git push <remote> --delete <branch>`

[1]: https://stackoverflow.com/questions/2003505/how-do-i-delete-a-git-branch-both-locally-and-remotely

### Debugging

Discription                             | Alias         | Command
---                                     | ---           | ---
Show how <remote> is configured locally |               | `git remote show <remote>`
Show all <remote>s                      |               | `git remote -v`
Fix misconfigured <remote> per branch   |               | `git branch <branch> -u <remote>/<branch>`
Should all <branch> <remote>            |               | `git branch -vv`

### Rebasing

Discription                                         | Alias             | Command
---                                                 | ---               | ---
Rebases the current branch on the given <branch>    |                   | `git rebase <branch>`
Continues the rebase after resolving conflicts      | `grc`             | `git rebase --continue`
Skip this "change" in the rebase via **no commit**  | `grs`             | `git rebase --skip`
Git cherry pick                                     |                   | `git cherry-pick <commit-sha>`

### Team Work

Git commands for team and project work.

Discription                                             | Alias             | Command
---                                                     | ---               | ---
Squashes to a single commit the given <feature-branch>  | `gms`  `squish`   | `git merge --squash <branch>`
Download remote <branch> to local <branch>              |                   | `git checkout -b <branch> <remote>/<branch>`
Add a remote                                            |                   | `git remote add <name> <remote>`
