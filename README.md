![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

# :sparkles: Introduction

I wanted a quick way to start a tmux session with windows and splits already
sized specific for certain projects, and then to have applications running inside such as nvim,
a code runner to run code in the split pane below or beside, a server, or what ever other applications
your current project needs.

This differs from Tmux Resurrect in that the setup comes from a premade script file that
you edit to get the setup you want. The file can then be run again to reset the session back up
after a system reboot or when ever the tmux server is killed. Tmux Resurrect saves your setup
as you go but you have to spend time setting it all up. Here its mostly already set up
and you just add/delete the options and applications needed.

Running the setup script opens up a new session setup file in nvim. Edit this file mostly by commenting out
certain lines with unneeded options or commands. Rename/add more windows, commands or options for your
projects as needed. Must enter a file path and filename to start in the editor.

An option will be given to delete session setup files whenever the tmux kill-server command is run
(which I have saved as an alias 'tka' in .bashrc 'tmux kill all'). Its very quick and easy to set up and delete
session setup files using these two scripts.

TODO: Make the ui more user friendly. It is very quick and easy if you already understand tmux commands but 
could be improved to only show the disired user input options rather than all the other stuff such as variables and
commands not directly related to user inputs.

# :zap: Requirements
-tmux
-nvim
-vim-tmux-runner VTR

# :bulb: Directories & scripts

1. #### session_names directory  
-    The directory where all the session setup files get saved to which are created when running `tmsetUpNewSession.sh`

2. #### session_setup_scripts directory  

- `tmsetupNewSession` sets up, saves, and runs the new tmux session setup file  

- `tmdeleteSessionNames` deletes session setup files

- `tmux_template.sh` script for molding a new tmux session setup file

# :wrench: Usage

- Just run the executable `tmsetupNewSession` in the terminal

- Enter a file to edit (use tab completion)

- run `tmdeleteSessionNames` to terminate all tmux sessions and give the option to
  delete the saved set-up-session files

- I use VTR vim-tmux-runner to run code which seems to work well

### :white_check_mark: License
![GitHub](https://img.shields.io/github/license/roofrack/dotfiles)
