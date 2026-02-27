# a-straightforward-gamestate-manager-for-LOVE2D
as the name suggests, this is a straightforward gamestate manager for LOVE2D

GENERAL USAGE:

1) Add gamestate.lua to your project (if you have a libraries folder, put it there)
2) create a "states" folder in the same directory as your main.lua
3) add this line at the top of your main.lua: gamestate = require("gamestate")
4) Now, whenever you need to switch states, you call this function: gamestate:switch("newState"), and the script will take care of the rest!
5) to freeze your state: gamestate:freeze(), to unfreeze: gamestate:unfreeze(), this is useful for pause menus and such :p

examples of a blank state and what your main.lua should have will be provided in this repo, if there's anything you don't understand, shoot me a DM on discord (Mimikitty3)

Feel free to modify this script however it benefits your needs the most! <3 
