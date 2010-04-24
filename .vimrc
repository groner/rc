set ai sm nowrap et ic ruler number sw=4 hidden
set guioptions-=m
set guioptions-=T

if &t_Co >= 256 || has("gui_running")
    colorscheme blackboard
endif

filetype plugin on
filetype indent on

runtime macros/matchit.vim
