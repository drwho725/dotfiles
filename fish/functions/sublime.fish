function sublime --description 'Launch Sublime Text'
    if [ (uname) == "Darwin" ]
        /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $argv
    else
        /usr/bin/subl
    end
end
