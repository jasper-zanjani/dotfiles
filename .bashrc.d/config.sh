#!/usr/bin/bash
config () {
    ALAC_CONFDIR=$HOME"/.config/alacritty"
    NVIM_CONFDIR=$HOME"/.config/nvim"
    case $1 in 
        term|alac*)
            cd $ALAC_CONFDIR
            $EDITOR $ALAC_CONFDIR"/alacritty.toml"
            cd -
            ;;
        cfg)    $EDITOR $HOME"/.bashrc.d/config.sh" ;;
        note)   $EDITOR $HOME"/.bashrc.d/note.sh" ;;
        nvim)
            cd $NVIM_CONFDIR
            case $2 in 
                k*) $EDITOR $NVIM_CONFDIR"/lua/keymaps.lua" ;;
                md|mark*) $EDITOR $NVIM_CONFDIR"/after/ftplugin/markdown.lua" ;;
                *) $EDITOR $NVIM_CONFDIR"/init.lua" ;;
            esac
            cd -
            ;;
        vim)    $EDITOR $HOME"/.vimrc" ;;
        re*)    source "$HOME""/.bashrc" ;; 
        tr*)    $EDITOR $HOME"/.bashrc.d/trade.sh" ;;
        *)      echo "Unknown application!" ;;
    esac
}
