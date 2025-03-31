trade () {
    export BACKEND="sqlite3"
    export DB=$HOME"/Documents/learn/sqlite/database.db"
    export TICKERS="ADA APT AVAX BCH BTC ETH NEAR POL SOL SUI TIA TRX XLM XRP"
    case $1 in
        add) shift ; _trade_add "$@"            ;;
        log) _trade_log $2                      ;;
        *) echo "Invalid subcommand!"; return 1 ;;
    esac

    unset BACKEND DB TICKERS
}

_trade_add () {
    local OPTIND
    local CONFIRMATION

    # Parse command-line
    while getopts 'D:d:i:p:q:' OPTIONS; do
        case "${OPTIONS}" in
            D) local DATE="${OPTARG}"           ;;
            d) local DESCRIPTION=${OPTARG}      ;;
            i) local ID=${OPTARG}               ;;
            p) local PRICE=${OPTARG}            ;;
            q) local QUANTITY=${OPTARG}         ;;
            ?) echo "Invalid option: -${OPTARG}"; return 1 ;;
            :) echo "Missing argument for option: -${OPTARG}"; return 1 ;;
        esac

        # Eliminate processed options and arguments on every iteration
        shift 2
        OPTIND=$(( OPTIND - 2 ))
    done

    # Handle ticker arg and enforce enumerations. 
    # Use array?
    local TICKER=${1^^}
    if [[ ! $TICKERS =~ $TICKER ]]; then 
        # echo "TICKERS: $TICKERS"
        echo "Invalid ticker symbol: ${TICKER}"
        return 1
    fi
    
    if [ -z "$DATE" ]; then
        local YEAR=$(date +%Y)
        local MONTH=$(date +%m)
        local DAY=$(date +%d)
    else
        local YEAR=$(date -d "$DATE" +%Y)
        local MONTH=$(date -d "$DATE" +%m)
        local DAY=$(date -d "$DATE" +%d)
    fi


    local EXECUTE="INSERT INTO trades 
    (id, year, month, day, ticker, price, quantity, description) 
    VALUES ('$ID', $YEAR, $MONTH, $DAY, '$TICKER', $PRICE, $QUANTITY, '$DESCRIPTION');"

    # Confirmation
    echo -e $BACKEND $DB "$EXECUTE"
    read -p "Execute the command? (y/N) " -n 1 -s CONFIRMATION
    echo
    if [[ ${CONFIRMATION,,} == 'y' ]]; then
        echo "Executing command.."
        /usr/bin/env $BACKEND $DB "$EXECUTE"
    else
        echo "Cancelling"
        return 0
    fi
}


_trade_log () {

    TICKER=$1

    if [ -z $TICKER ] ; then
        local EXECUTE="SELECT PRINTF (\"%-5s $%.2f %02d/%02d/%d\", ticker, quantity * price, month, day, year ) FROM trades;"
    else
        local EXECUTE="SELECT PRINTF (\"%-5s $%.2f %02d/%02d/%d\", ticker, quantity * price, month, day, year ) FROM trades WHERE ticker IS \"${TICKER^^}\";"
    fi
    /usr/bin/env $BACKEND $DB "$EXECUTE"

}

