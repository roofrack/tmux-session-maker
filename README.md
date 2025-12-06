![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

### :sparkles: Introduction

A quick way to start a tmux session with windows and splits already sized specifically for certain projects
and then have applications running inside such as nvim, a code runner to run code in a split pane,
a server, and/or what ever other applications your current project needs.

The setup comes from a premade script file. Edit this file to make the setup customized to however you want.
Just add/delete options and applications needed by adding or commenting out lines in this setup file. If you choose not
to save/edit this session setup file than tmux opens a REPL to run code. Create a keyboard shortcut using the VTR plugin 
in nvim to run code in the adjacent tmux pane.

The setup file can then be run again to reset the session back up after a system reboot or when ever
the tmux server is killed. To get started just enter a file to edit.

An option will be given to delete session setup files (if they exist) whenever the tmux kill-server command is run
(which I have saved as an alias 'tka' in .bashrc 'tmux kill all'). Its very quick and easy to set up and delete
session setup files and tmux sessions using these two scripts.

### :zap: Requirements

- tmux

- nvim

- VTR vim-tmux-runner plugin for nvim

### :bulb: Directories & scripts

1. #### session_names directory  
-    The directory where all the session setup files get saved to which are created when running `tmsetUpNewSession.sh`

2. #### session_setup_scripts directory  

- `tmsetupNewSession` sets up, gives option to save & edit, and run the new tmux session setup file  

- `tmdeleteSessionNames` deletes session setup files

- `tmux_template.sh` script for molding a new tmux session setup file

### :wrench: Usage

- Make these scripts executable and add them to your PATH variable (could also add alias in .bashrc execute)

- Run `tmsetupNewSession` in the terminal

- Enter a file to edit from your project (use tab completion)

- Run `tmdeleteSessionNames` to terminate all tmux sessions and give the option to
  delete the saved set-up-session files

- I use VTR vim-tmux-runner to run code which seems to work well

### :white_check_mark: License
![GitHub](https://img.shields.io/github/license/roofrack/dotfiles)
