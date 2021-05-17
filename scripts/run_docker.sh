NEW_HOME="/hanoona"

nvidia-docker run  \
    --volume "$HOME":"$NEW_HOME" \
    --ipc=host \
    hanoona:owod \
    bash -c \
    "cd ${NEW_HOME}/Desktop/owod/OWOD;  ./$1"
