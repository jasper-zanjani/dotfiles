#!/usr/bin/bash
note () {
    if [ $# -lt 1 ]
    then
        echo "Please provide an argument"
        #exit 1
    fi

    # Directories
    NOTES_DIR="$HOME""/Documents/git"
    C_NOTES_DIR="$NOTES_DIR""/c"
    CODING_NOTES_DIR="$NOTES_DIR""/coding"
    CRYPTO_NOTES_DIR="$NOTES_DIR""/cryptocurrency"
    DEVOPS_NOTES_DIR="$NOTES_DIR""/devops"
    LANG_NOTES_DIR="$NOTES_DIR""/language"
    LINUX_NOTES_DIR="$NOTES_DIR""/linux"
    SCRIPTS_DIR="$NOTES_DIR""/scripts"
    VINTAGE_DIR="$NOTES_DIR""/vintage"

    # Notes files
    CRYPTO_NOTES="$CRYPTO_NOTES_DIR"
    BASH_NOTES="$LINUX_NOTES_DIR""/docs/Shells/bash.md"
    ETH_NOTES=$CRYPTO_NOTES_DIR"/includes/coins/eth.md"
    GUN_NOTES=$NOTES_DIR"/guns/docs/index.md"
    NEOVIM_NOTES="$LINUX_NOTES_DIR""/docs/Applications/nvim.md"
    RUST_NOTES=$CODING_NOTES_DIR"/Rust"
    SQLITE_NOTES=$LINUX_NOTES_DIR"/includes/Commands/s/sqlite3.md"
    DB_NOTES=$LINUX_NOTES_DIR"/docs/Databases.md"

    case $1 in

        ai)
            cd $NOTES_DIR"/ai"
            $EDITOR $NOTES_DIR"/ai/docs/index.md"
            ;;

        az)
            cd $DEVOPS_NOTES_DIR
            $EDITOR $DEVOPS_NOTES_DIR"/docs/Cloud/Azure/index.md"
            ;;

        c)
            cd $C_NOTES_DIR
            $EDITOR $C_NOTES_DIR"/docs/index.md"
            ;;

        cod*)
            cd $CODING_NOTES_DIR
            case $2 in 
                gtk)    $EDITOR $CODING_NOTES_DIR"/includes/gtk"                ;;
                gtk-rs) $EDITOR $CODING_NOTES_DIR"/includes/gtk-rs"             ;;
                go)     $EDITOR $CODING_NOTES_DIR"/includes/golang"             ;;
                rs)     $EDITOR $CODING_NOTES_DIR"/includes/rs"                 ;;
                *)      $EDITOR $CODING_NOTES_DIR"/docs/index.md"               ;;
            esac
            ;;

        cry*)
            cd $CRYPTO_NOTES_DIR
            case $2 in 
                inv*)   $EDITOR $CRYPTO_NOTES"/docs/investment.md"              ;;
                sol)    $EDITOR $CRYPTO_NOTES"/includes/coins/sol/info.md"      ;;
                ton)    $EDITOR $CRYPTO_NOTES"/includes/coins/ton/info.md"      ;;
                trx)    $EDITOR $CRYPTO_NOTES"/includes/coins/trx/info.md"      ;;
                *)      $EDITOR $CRYPTO_NOTES"/docs/index.md"                   ;;
            esac
            ;;

        db)
            cd $LINUX_NOTES_DIR
            $EDITOR $DB_NOTES
            ;;

        dev*)
            cd $DEVOPS_NOTES_DIR
            $EDITOR $DEVOPS_NOTES_DIR"/docs/index.md" 
            ;;

        es)
            cd $LANG_NOTES_DIR
            $EDITOR $LANG_NOTES_DIR"/docs/Spanish.md"
            ;;

        girl*)
            cd $NOTES_DIR"/girls"
            $EDITOR $NOTES_DIR"/girls/docs/index.md"
            ;;

        gun*)
            cd $NOTES_DIR"/guns"
            $EDITOR $GUN_NOTES
            ;;

        ibm*)
            cd $DEVOPS_NOTES_DIR
            $EDITOR $DEVOPS_NOTES_DIR"/docs/Cloud/IBM/index.md"
            ;;

        k*)
            cd $NOTES_DIR"/notes"
            $EDITOR $NOTES_DIR"/notes/docs/Misc/Keyboards.md"
            ;;

        lx)
            cd $LINUX_NOTES_DIR
            case $2 in 
                dnf)    $EDITOR $LINUX_NOTES_DIR"/includes/Commands/d/dnf.md"   ;;
                hx)     $EDITOR $LINUX_NOTES_DIR"/includes/cmd/helix"           ;;
                tmux)   $EDITOR $LINUX_NOTES_DIR"/includes/Commands/t/tmux.md"  ;;
                *)      $EDITOR $LINUX_NOTES_DIR                                ;;
            esac
            ;;

        notes)
            cd $NOTES_DIR"/notes"
            $EDITOR $NOTES_DIR"/notes/docs/index.md"
            ;;

        scr*)
            cd $SCRIPTS_DIR
            $EDITOR $SCRIPTS_DIR"/docs/index.md"
            ;;

        sql*)
            cd $LINUX_NOTES_DIR
            $EDITOR $SQLITE_NOTES
            ;;

        vin*)
            cd $VINTAGE_DIR
            $EDITOR $VINTAGE_DIR
            ;;

        *)
            echo "Unknown argument"
            return 1
            ;;
    esac
    echo "Don't forget to commit changes!"
    git status -s
}
