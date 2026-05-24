#!/bin/bash

export GAME_ROOT="$(dirname "$0")"

load_player_data(){
    source "$GAME_ROOT/data/player_data.sh"
}

