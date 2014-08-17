function install_codesearch --description 'Install codesearch'
    set -l OS (uname)
    if [ $OS = "Darwin" ];
        brew install go
        # brew install hg
        # hg clone https://code.google.com/p/codesearch/
        set -x GOROOT $HOME/go
        set -x GOPATH $GOROOT/bin
        go get code.google.com/p/codesearch/cmd/{cindex,csearch}
        go install code.google.com/p/codesearch/cmd/{cindex,csearch}
        brew install ctags
        echo "Run: ctags -R <code_dir>"
    else
        sudo apt-get install codesearch
        sudo apt-get install exuberant-ctags
        echo "Run: ctags -R <code_dir>"
    end
end
