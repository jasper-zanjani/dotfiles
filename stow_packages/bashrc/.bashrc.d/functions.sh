# Create a random project name for use with cloud providers and other

# use cases where a globally unique name is needed.
newname () {
  WORDS=$(shuf -n2 /usr/share/dict/words | tr '\n' '-')
  CHARS=$(echo $RANDOM | md5sum )

  echo "$WORDS""${CHARS:0:5}"
}

pw () {
    openssl rand -base64 16
}

open () {
    xdg-open $1
}

blp () {
    # Have to figure out a way to search PATH for this executable
    BLUEPRINT_COMPILER=$HOME"/.local/bin/blueprint-compiler.py"
    if [[ ! -x $BLUEPRINT_COMPILER ]]; then
        echo "$BLUEPRINT_COMPILER not found"
        exit 1
    fi
    for BLUEPRINT_FILE in *.blp; do
        # Remove .blp extension
        $BLUEPRINT_COMPILER compile $BLUEPRINT_FILE > "${BLUEPRINT_FILE/.blp/.ui}"
    done
}

alacritty () {
    nohup alacritty -T "$1" >&/dev/null &
}

pug () {
    # Have to figure out a way to search PATH for this executable
    PUG_COMPILER=$HOME"/.local/bin/pypugjs"
    if [ -x $PUG_COMPILER ]; then
        for PUG_FILE in *.pug; do
            OUTPUT_FILENAME="${PUG_FILE/.pug/}"".xml"
            $PUG_COMPILER $PUG_FILE -o $OUTPUT_FILENAME
        done
    else
        echo "No pug compiler found"
    fi
}

nroff () {
    NROFF_EXECUTABLE="/usr/bin/nroff"
    FORMATTER="/usr/bin/bat --style=plain"
    
    if [[ ! -x $NROFF_EXECUTABLE ]]; then
        echo "$NROFF_EXECUTABLE not found!"
        exit 1
    fi

    while [[ ! -z $1 ]]; do
        $NROFF_EXECUTABLE $1 | 
            sed '/^[[:space:]]*$/d' | 
            $FORMATTER
        shift
    done
}
