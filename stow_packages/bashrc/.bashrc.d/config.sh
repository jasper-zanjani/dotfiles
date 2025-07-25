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
        al*)    $EDITOR $HOME"/.bashrc.d/aliases.sh"        ;;
        cfg)    $EDITOR $HOME"/.bashrc.d/config.sh"         ;;
        f*)     $EDITOR $HOME"/.bashrc.d/functions.sh"      ;;
        hx)     hx $HOME"/.config/helix/config.toml"        ;;
        note)   $EDITOR $HOME"/.bashrc.d/note.sh"           ;;
        pass)   $EDITOR $HOME"/.bashrc.d/pass.rc"           ;;
        nv*)
            cd $NVIM_CONFDIR
            case $2 in 
                k*) $EDITOR $NVIM_CONFDIR"/lua/keymaps.lua" ;;
                md|mark*) $EDITOR $NVIM_CONFDIR"/after/ftplugin/markdown.lua" ;;
                *) $EDITOR $NVIM_CONFDIR"/init.lua" ;;
            esac
            cd -
            ;;
        vim)    $EDITOR $HOME"/.vimrc"              ;;
        re*)    source "$HOME""/.bashrc"            ;; 
        tmux)   $EDITOR $HOME"/.config/tmux/tmux.conf" ;;
        tr*)    $EDITOR $HOME"/.bashrc.d/trade.sh"  ;;
        xuid)   $EDITOR $HOME"/.bashrc.d/xuid.sh"   ;;
        *)      echo "Unknown application!"         ;;
    esac
}
