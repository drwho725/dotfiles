function fish_title --description 'fish title'
    echo "$USER@"(uname -n)" - "(date +"%a %b %d %H:%M %p")" - "(uname -sr)
end
