function ls --description 'List contents of directory'
    set -l param
    if [ (uname) = "Darwin" ];
        set param $param -AlFhG
    else
        set param $param -AlFh --color=always
        if isatty 1
            set param $param --indicator-style=classify
        end
    end
    command ls $param $argv
end
