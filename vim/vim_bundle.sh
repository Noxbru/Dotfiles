mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle/

BGreen='\033[1;32m'
BRed='\033[1;31m'
BCyan='\033[1;36m'
NC='\033[0m'

update_repo() {
(
    n=$1[@]
    pair=("${!n}")

    user=${pair[0]}
    repo=${pair[1]}

    if [[ "$user" = "" || "$repo" = "" ]]; then
        echo -e "${BRed}Error${NC}: empty user or repo in: ${BRed}$1${NC}"
        return
    fi

    if [ -d "$repo" ]; then
        echo -n "Updating $user's $repo: "
        cd "$repo"

        # git errors seems to go to stderr so we need to redirect stderr
        # to stdout to capture them
        out=`git pull --rebase 2>&1`
        if [ "$out" = "Already up-to-date." ]; then
            echo -e "${BGreen}$out${NC}"
        elif [[ "$out" = error* ]]; then
            echo -e "${BRed}Error!${NC}"
        elif [ "$out" = "From*" ]; then
            echo -e "${BCyan}Updated!${NC}"
        else
            echo "$out"
        fi
    else
        echo "Creating $user's $repo"
        out=`git clone "https://github.com/$user/$repo.git"`
        echo "$out"
    fi
)
}

nerdtree=(scrooloose nerdtree)
nerdcommenter=(scrooloose nerdcommenter)
syntastic=(scrooloose syntastic)

julia=(JuliaLang julia-vim)

tabular=(godlygeek tabular)

tagbar=(majutsushi tagbar)

rainbow_parentheses=(eapache rainbow_parentheses.vim)

fast_fold=(Konfekt FastFold)

vim_notebook=(baruchel vim-notebook)

ultisnips=(SirVer ultisnips)
vim_snippets=(honza vim-snippets)

pathogen=(tpope vim-pathogen)

vim_airline=(bling vim-airline)

vim_glsl=(tikhomirov vim-glsl)

vim_cpp_enhanced_highlight=(octol vim-cpp-enhanced-highlight)

vim_rust=(rust-lang rust.vim)
vim_racer=(racer-rust vim-racer)

vim_actionscript=(jeroenbourgois vim-actionscript)

update_repo nerdtree
update_repo nerdcommenter
update_repo syntastic

update_repo julia

update_repo tabular

update_repo tagbar

update_repo rainbow_parentheses

update_repo fast_fold

update_repo vim_notebook


# SirVer Snippets
update_repo ultisnips
update_repo vim_snippets


# Install dependencies: for vim-snipmate
#get_bundle tomtom tlib_vim
#get_bundle MarcWeber vim-addon-mw-utils
#get_bundle honza vim-snippets

# Install SnipMate Snippets
#get_bundle garbas vim-snipmate

update_repo pathogen
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

update_repo vim_airline

update_repo vim_glsl

update_repo vim_cpp_enhanced_highlight

update_repo vim_rust
update_repo vim_racer


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

update_repo vim_actionscript
