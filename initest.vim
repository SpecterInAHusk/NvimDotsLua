set shell=/bin/zsh
if has("termguicolors")
    set termguicolors
endif

lua require('pluginsnew')
lua require('load')

source $HOME/.config/nvim/settings/pluginsettings.vim
source $HOME/.config/nvim/settings/fucommands.vim
source $HOME/.config/nvim/settings/mappings.vim
source $HOME/.config/nvim/settings/settings.vim

colorscheme onedark
