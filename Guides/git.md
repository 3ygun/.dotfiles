# Git - "3 letters of complexity"

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Undo](#undo)
    - [Debugging](#debugging)
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
Clear the given <file> of changes   | `gclf`  `discard` | `git checkout -- <file>`


### Debugging

Discription                             | Alias         | Command
---                                     | ---           | ---
Show how <remote> is configured locally |               | `git remote show <remote>`
Fix misconfigured <remote> per branch   |               | `git branch <branch> -u <remote>/<branch>`


### Team Work

Git commands for team and project work.

Discription                                             | Alias             | Command
---                                                     | ---               | ---
Squashes to a single commit the given <feature_branch>  | `gms`  `squish`   | `git remote show <remote>`
