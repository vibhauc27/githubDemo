#!/bin/bash

declare -A sounds

sounds[dog]=bark
sounds[cow]=maa
sounds[bird]=tweet
sounds[snake]=shhh

echo "Animals sounds are :" ${sounds[@]}
echo "Dogs sound will be like:" ${sounds[dog]}
echo "The animals are:" ${!sounds[@]}
echo "The number of animals are:" ${#sounds[@]}
unset sounds[bird]
