function init -a path --on-event init_jump
  if not set -q MARKPATH
    set -gx MARKPATH $HOME/.marks
    command mkdir -p $MARKPATH
  end
end
