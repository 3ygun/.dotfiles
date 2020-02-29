# Bash

<!-- TOC depthFrom:2 -->

- [Helpful Stuff](#helpful-stuff)
    - [Stuff](#stuff)
    - [Styling](#styling)
    - [Control](#control)

<!-- /TOC -->

## Helpful Stuff

### Stuff

Want to know which program is hoging that port? `lsof -i :8070`

### Styling

For styling the entire command prompt consult: [Bash Shell](https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/)

### Control

Action | Syntax
--- | ---
Redirect to standard output both `stdout` and `stderr` to `/dev/null`. See [redirecting to /dev/null](https://unix.stackexchange.com/questions/119648/redirecting-to-dev-null) | `... > /dev/null 2>&1`
