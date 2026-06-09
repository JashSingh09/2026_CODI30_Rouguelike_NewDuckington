#!/bin/bash

source "shop_menu.sh"
source "miniboss.sh"
source "floors/"
small_room() {
	echo "you have entered a small room"

	for ((i=0; i<1; 1++)); do
		generate_enemy
	done
}





normal_room(){
	echo "you have entered a normal room"

	for ((i=0; i<3; 1++)); do
		generate_enemy
	done

}





huge_room(){
	echo "you have entered a massive room"

	for ((i=0; i<5; 1++)); do
		generate_enemy
	done
}


shop() {
	shop_menu

}


miniboss(){
	miniboss
}


boss_room(){
	#final boss only happes on level 100
}
generate_room() {

    room_types=("small" "normal" "huge")

    selected_room=${room_types[$((RANDOM % ${#room_types[@]}))]}

    case $selected_room in
        small)  small_room ;;
        normal) normal_room ;;
        huge)   huge_room ;;
    esac



