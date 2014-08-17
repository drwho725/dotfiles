function grep --description 'Search string'
    set -l param --color=auto
    command grep $param $argv
end
