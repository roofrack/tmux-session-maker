![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

### :sparkles: Introduction

This utility generates and runs a file for starting a custom tmux session. Edit file to customize setup further.
This generated setup-session file can then be re-executed to restart the session back up after a system reboot
or whenever the tmux server is killed.

A quick and easy way to start/restart a tmux session with windows and splits sized specifically for certain projects
and then have applications already running inside.


### :zap: Requirements

- tmux

- nvim (maybe?)

- VTR vim-tmux-runner plugin for nvim (maybe?)

### :bulb: Directories & scripts

1. #### session_names directory  
-    The directory where all the setup-session files get saved (which were created when running `tmsetUpNewSession.sh`)

2. #### session_setup_scripts directory  

- `tmsetupNewSession` generates & executes setup-session files

- `tmdeleteSessionNames` kills running tmux sessions & deletes setup-session files

- `tmux_template.sh` file containing different functions for custom tmux layouts

### :wrench: Usage

- Make these scripts executable and add them to your PATH variable (could also add alias in .bashrc)

- Run `tmsetupNewSession` in the terminal

- Enter a file to edit from your project (use tab completion)

- To restart a custom tmux session execute the saved setup-session file

- type `tm + tab complete` to show available setup-session files (if added to path variable)

- Run `tmdeleteSessionNames` to terminate all tmux sessions and give the option to
  delete the saved setup-session files

- VTR vim-tmux-runner to run code seems to work well (old but works)

### :white_check_mark: License
![GitHub](https://img.shields.io/github/license/roofrack/dotfiles)
