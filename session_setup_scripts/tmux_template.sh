repl_setup() {
  WINDOW_ONE_NAME="editor"
  WINDOW_TWO_NAME="compiler"
  tmux new-session -d -s "$SESSION_NAME" -n "$WINDOW_ONE_NAME" -c "$DIRECTORY"
  tmux split-window -t "$SESSION_NAME":"$WINDOW_ONE_NAME" -v -c "$DIRECTORY"
  tmux resize-pane -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 -D 10
  tmux new-window -t "$SESSION_NAME" -n "$WINDOW_TWO_NAME" -c "$DIRECTORY"
  tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 "vim $EDIT_FILE" Enter
  tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 ":VtrAttachToPane 1" Enter
}

opencode_setup() {
  WINDOW_ONE_NAME="editor"
  WINDOW_TWO_NAME="compiler"
  tmux new-session -d -s "$SESSION_NAME" -n "$WINDOW_ONE_NAME" -c "$DIRECTORY"
  tmux split-window -t "$SESSION_NAME":"$WINDOW_ONE_NAME" -v -c "$DIRECTORY"
  tmux resize-pane -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 -D 10
  tmux new-window -t "$SESSION_NAME" -n "$WINDOW_TWO_NAME" -c "$DIRECTORY"
  tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 "vim $EDIT_FILE" Enter
  tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 ":VtrAttachToPane 1" Enter
}

#
#
#
#
#
#
#
#
#
#
#
# Rob, you need this test here for when running this file as a stand alone script.
# It will either re-attach to an already running tmux session OR will
# start up a session using the generated session file.
reattach_or_start_session() {
  if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    printf "The tmux session ${bold}${italic}${green}${SESSION_NAME}${normal} %s\n" \
      "is already running..."
    tmux attach-session -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0
  else
    $selected_tmux_layout
    tmux attach-session -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0
  fi
}

#
#
#
#
#
#
#
#
#
#
#
#
# --------------- Some Examples ------------------------------------------

# WINDOW_ONE_NAME="editor"   # **** CAN EDIT WINDOW NAME HERE ******<<<<<EDIT HERE
# WINDOW_TWO_NAME="compiler" # **** CAN EDIT WINDOW NAME HERE ******<<<<<EDIT HERE
# WINDOW_THREE="         " # **** CAN EDIT WINDOW NAME HERE ******<<<<<EDIT HERE

# Setting up the windows and splits ***** EDIT SETTINGS HERE ****<<<<EDIT HERE
# ----------------------------------------------------------------------------
# tmux new-session -d -s "$SESSION_NAME" -n "$WINDOW_ONE_NAME" -c "$DIRECTORY"
# tmux split-window -t "$SESSION_NAME":"$WINDOW_ONE_NAME" -v -c "$DIRECTORY"
# tmux resize-pane -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 -D 5
# tmux split-window -t "$SESSION_NAME":"$WINDOW_ONE_NAME" -h -c "$DIRECTORY"
# tmux resize-pane -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 -R 25
# tmux resize-pane -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 -D 10
# tmux new-window -t "$SESSION_NAME" -n "$WINDOW_TWO_NAME" -c "$DIRECTORY"
# tmux new-window -t "$SESSION_NAME" -n "$WINDOW_THREE" -c "$DIRECTORY"

# Turn these settings on/off by commenting out **** EDIT BELOW **<<<<EDIT HERE
# ----------------------------------------------------------------------------
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 "vim $EDIT_FILE" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 "vim ." Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 ":VtrAttachToPane 1" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".1 "npm run dev" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".2 "podman start -ai -l" Enter
# ----------------------------------------------------------------------------
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_TWO_NAME".0 "$HOME/.cargo/bin/bacon" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".1 "enter command here" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".1 "npm run dev -- --host" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_TWO_NAME".0 "npm run dev -- --host" Enter
# tmux send-keys -t "$SESSION_NAME":"$WINDOW_ONE_NAME".0 ":nnoremap <leader>sc :w<cr> \
#    :VtrSendCommandToRunner shellcheck $EDIT_FILE<cr>" Enter
# tmux send-keys -t "$SESSION_NAME" "if [[ ! -f ${DIRECTORY}/.eslintrc.js ]]; then \
#     ln -s ~/coding-practice/javascript/.eslintrc.js; fi" Enter

# tmux send-keys -t "$SESSION_NAME" "if [[ ! -f ${DIRECTORY}/README.txt ]];\
#   then touch ${DIRECTORY}/README.txt; fi" Enter

# tmux send-keys -t "$SESSION_NAME":"$WINDOW_TWO_NAME" "clear &&\
#    node_modules/.bin/browser-sync start --server --files * --no-open" Enter

# ----------------------------------------------------------------------------
# # Some default settings based on filetypes:
# case "${EDIT_FILE##*.}" in
# rs)
#   tmux send-keys -t "$SESSION_NAME":"$WINDOW_TWO_NAME".0 "$HOME/.cargo/bin/bacon" Enter
#   ;;
# *)
#   # echo default
#   ;;
# esac
