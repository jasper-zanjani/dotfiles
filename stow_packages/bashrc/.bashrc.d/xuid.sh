_random_box() {
    local DIGITS=$1
    local OUTPUT=""
    declare -a BOX_CHARS=("\U2591" "\U2592" "\U2593")
    for ((x=0; x<$DIGITS; x++))
    do
        local BOX_CHARS_IX=$(( $RANDOM % 3 ))
        OUTPUT="$OUTPUT"${BOX_CHARS[$BOX_CHARS_IX]}
    done
    echo -e $OUTPUT
}

# Generate an "obfuscated" UUID, or rather a series of box characters
# that imitates the form of a UUID.
xuid () {
    local XUID=$(_random_box 8)-$(_random_box 4)-$(_random_box 4)-$(_random_box 4)-$(_random_box 6)
    echo -e $XUID
}

xdate () {
    local XDATE="$(_random_box 4)-$(_random_box 2)-$(_random_box 2)T$(_random_box 2):$(_random_box 2)Z"
    echo -e $XDATE
}
