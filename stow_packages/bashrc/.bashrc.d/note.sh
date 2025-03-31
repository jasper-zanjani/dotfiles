#!/usr/bin/bash
note () {
    if [ $# -lt 1 ]
    then
        echo "Please provide an argument"
        #exit 1
    fi

    # Directories
    NOTES_DIR="$HOME""/Documents/git"
    CODING_NOTES_DIR="$NOTES_DIR""/coding"
    CRYPTO_NOTES_DIR="$NOTES_DIR""/cryptocurrency"
    DEVOPS_NOTES_DIR="$NOTES_DIR""/devops"
    LANG_NOTES_DIR="$NOTES_DIR""/language"
    LINUX_NOTES_DIR="$NOTES_DIR""/linux"

    # Notes files
    CRYPTO_NOTES="$CRYPTO_NOTES_DIR"
    BASH_NOTES="$LINUX_NOTES_DIR""/docs/Terminal/bash.md"
    ETH_NOTES=$CRYPTO_NOTES_DIR"/includes/coins/eth.md"
    GUN_NOTES=$NOTES_DIR"/guns/docs/index.md"
    NEOVIM_NOTES="$LINUX_NOTES_DIR""/docs/Applications/nvim.md"
    RUST_NOTES=$CODING_NOTES_DIR"/Rust"
    SQLITE_NOTES=$LINUX_NOTES_DIR"/includes/Commands/s/sqlite3.md"
    DB_NOTES=$LINUX_NOTES_DIR"/docs/Databases.md"

    case $1 in

        ai)
            cd $NOTES_DIR"/notes"
            $EDITOR $NOTES_DIR"/notes/docs/Misc/AI.md"
            cd -
            ;;

        az)
            cd $DEVOPS_NOTES_DIR
            $EDITOR $DEVOPS_NOTES_DIR"/docs/Cloud/Azure/index.md"
            cd -
            ;;

        bash)
            cd $LINUX_NOTES_DIR
            $EDITOR $BASH_NOTES
            cd -
            ;;

        cod*)
            cd $CODING_NOTES_DIR
            $EDITOR
            cd -
            ;;

        cry*)
            cd $CRYPTO_NOTES_DIR
            case $2 in 
                inv*)
                    $EDITOR $CRYPTO_NOTES"/docs/investment.md"
                    ;;
                sol)
                    $EDITOR $CRYPTO_NOTES"/includes/coins/sol.md"
                    ;;
                ton)
                    $EDITOR $CRYPTO_NOTES"/includes/coins/ton.md"
                    ;;
                trx)
                    $EDITOR $CRYPTO_NOTES"/includes/coins/trx.md"
                    ;;
                *)
                    $EDITOR $CRYPTO_NOTES"/docs/index.md"
                    ;;
            esac
            cd -
            ;;

        db)
            cd $LINUX_NOTES_DIR
            $EDITOR $DB_NOTES
            cd -
            ;;

        dev*)
            cd $DEVOPS_NOTES_DIR
            $EDITOR $DEVOPS_NOTES_DIR"/docs/index.md" 
            cd -
            ;;

        es)
            cd $LANG_NOTES_DIR
            $EDITOR $LANG_NOTES_DIR"/docs/Spanish.md"
            cd -
            ;;

        eth)
            cd $CRYPTO_NOTES_DIR
            $EDITOR $ETH_NOTES
            ;;

        girl*)
            cd $NOTES_DIR"/girls"
            $EDITOR $NOTES_DIR"/girls/docs/index.md"
            cd -
            ;;

        guns)
            cd $NOTES_DIR"/guns"
            $EDITOR $GUN_NOTES
            cd -
            ;;

        k*)
            cd $NOTES_DIR"/notes"
            $EDITOR $NOTES_DIR"/notes/docs/Misc/Keyboards.md"
            cd -
            ;;

        lx)
            cd $LINUX_NOTES_DIR
            case $2 in 
                dnf) 
                    $EDITOR $LINUX_NOTES_DIR"/includes/Commands/d/dnf.md"
                    ;;
                *)
                    $EDITOR $LINUX_NOTES_DIR
                    ;;
            esac
            cd -
            ;;

        notes)
            cd $NOTES_DIR"/notes"
            $EDITOR $NOTES_DIR"/docs/index.md"
            cd -
            ;;


        nvim)
            cd $LINUX_NOTES_DIR
            $EDITOR $NEOVIM_NOTES
            cd -
            ;;

        sql*)
            cd $LINUX_NOTES_DIR
            $EDITOR $SQLITE_NOTES
            cd -
            ;;


        *)
            echo "Unknown argument"
            ;;
    esac
}
