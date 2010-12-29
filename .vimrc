call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set ai sm nowrap et ic ruler number sw=4 hidden
set guioptions-=m
set guioptions-=T

set suffixes+=.db

if &t_Co >= 256 || has("gui_running")
    colorscheme blackboard
endif

filetype plugin on
filetype indent on

autocmd FileType html\|xhtml\|xml setl sw=2
autocmd FileType rst setl sw=3

runtime macros/matchit.vim
