function init -a path --on-event init_jump
  if not set -q MARKPATH
    set -gx MARKPATH $HOME/.marks
    command mkdir -p $MARKPATH
  end
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


if not set -q MARKPATH
  echo "Not defined"
else 
  echo $MARKPATH
end