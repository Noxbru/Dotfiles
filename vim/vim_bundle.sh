mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle/

get_bundle() {
    (
     if [ -d "$2" ]; then
        echo "Updating $1's $2"
        cd "$2"
        git pull --rebase
     else
        git clone "https://github.com/$1/$2.git"
     fi
    )
}

get_bundle scrooloose nerdtree
get_bundle scrooloose nerdcommenter
get_bundle scrooloose syntastic

get_bundle JuliaLang julia-vim

get_bundle godlygeek tabular

get_bundle majutsushi tagbar

get_bundle kien rainbow_parentheses.vim

get_bundle Konfekt FastFold

get_bundle baruchel vim-notebook

# SirVer Snippets
get_bundle SirVer ultisnips
get_bundle honza vim-snippets


# Install dependencies: for vim-snipmate
#get_bundle tomtom tlib_vim
#get_bundle MarcWeber vim-addon-mw-utils
#get_bundle honza vim-snippets

# Install SnipMate Snippets
#get_bundle garbas vim-snipmate

get_bundle tpope vim-pathogen
#get_bundle tpope vim-abolish
#get_bundle tpope vim-bundler
#get_bundle tpope vim-commentary
#get_bundle tpope vim-cucumber
#get_bundle tpope vim-endwise
#get_bundle tpope vim-flatfoot
#get_bundle tpope vim-fugitive
#get_bundle tpope vim-git
#get_bundle tpope vim-haml
#get_bundle tpope vim-markdown
#get_bundle tpope vim-rake
#get_bundle tpope vim-ragtag
#get_bundle tpope vim-rails
#get_bundle tpope vim-repeat
#get_bundle tpope vim-speeddating
#get_bundle tpope vim-surround
#get_bundle tpope vim-unimpaired

get_bundle bling vim-airline

get_bundle tikhomirov vim-glsl

get_bundle octol vim-cpp-enhanced-highlight

# XXX
#get_bundle jeaye color_coded

#get_bundle duff vim-bufonly
#get_bundle leshill vim-json
#get_bundle mileszs ack.vim
#get_bundle pangloss vim-javascript

#get_bundle wincent Command-T
#get_bundle mattn webapi-vim
#get_bundle mattn gist-vim
#get_bundle esukram taglist.vim

#get_bundle vim-ruby vim-ruby

#get_bundle vim-scripts vcscommand.vim
#get_bundle vim-scripts vimwiki

#get_bundle altercation vim-colors-solarized

get_bundle jeroenbourgois vim-actionscript
