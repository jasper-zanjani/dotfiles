pass () {
    CLIP="xclip -sel clip"
    RABBY_PASSWORD="/pool/Documents/wallets/rabby_pass"
    UNISWAP_PASSWORD="/pool/Documents/wallets/uniswap_pass"
    PHANTOM_PASSWORD="/pool/Documents/wallets/phantom_pass_chrome"
    case $1 in
        ra*)    $CLIP $RABBY_PASSWORD       ;;
        un*)    $CLIP $UNISWAP_PASSWORD     ;;
        ph*)    $CLIP $PHANTOM_PASSWORD     ;;
        *)      echo "Unknown  argument!"   ;;
    esac
    unset {RABBY,UNISWAP}_PASSWORD CLIP
}
