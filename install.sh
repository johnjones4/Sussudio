#!/bin/bash

INSTALL_PATH="/usr/local/bin/sussudio"

sudo cat >"$INSTALL_PATH" <<'EOF'
  #!/bin/bash

  LYRICS[0]="There's this girl that's been on my mind All the time, Sussudio oh oh Now she don't even know my name But I think she likes me just the same Sussudio oh oh"
  LYRICS[1]="Oh if she called me I'd be there I'd come running anywhere She's all I need, all my life I feel so good if I just say the word Sussudio, just say the word Oh Sussudio"
  LYRICS[2]="Now I know that I'm too young My love has just begun Sussudio oh oh Ooh give me a chance, give me a sign I'll show her anytime Sussudio oh oh"
  LYRICS[3]="Ah, I've just got to have her, have her now I've got to get closer but I don't know how She makes me nervous and makes me scared But I feel so good if I just say the word Sussudio just say the word Oh Sussudio, oh"
  LYRICS[4]="Ah, she's all I need all of my life I feel so good if I just say the word Sussudio I just say the word Oh Sussudio I just say the word Oh Sussudio I'll say the word Sussudio oh oh oh Just say the word"
  LENGTH=${#LYRICS[*]}
  echo ${LYRICS[$((RANDOM%LENGTH))]}

  COMMAND=`which sudo`
  if [ "$#" -gt 0 ]; then
    ACTUALL_COMMAND=`which $1`
    COMMAND="$COMMAND $ACTUALL_COMMAND"

    for i in "${@:2}"; do
      COMMAND="$COMMAND \"$i\""
    done
  fi
  eval $COMMAND
EOF

sudo chmod +x "$INSTALL_PATH"
