function init -a path --on-event init_jump
    set -gx MARKPATH $HOME/.marks
    command mkdir -p $MARKPATH
    complete -c jump -f -a '(command ls ~/.marks)'
    complete -c unmark -f -a '(command ls ~/.marks)'
end

function jump
  if test (count $argv) -ne 1
    echo "Usage: jump <MARK_NAME>"
  else
    if test -d $MARKPATH/$argv[1] -a -L $MARKPATH/$argv[1]
      cd $MARKPATH/$argv[1]
    else
      echo "No such mark: $argv[1]"
    end
  end
end
