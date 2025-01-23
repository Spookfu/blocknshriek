# Handler Functions being run as a Player
execute as @a[tag=Players] run function shriek:gamehandler/status/status_check
execute as @a[tag=Players] run function shriek:gamehandler/runes/runeshandler
execute as @a[tag=Players] run function shriek:gamehandler/shrieker/shrieker-checker

## Special Function for runes
execute as @a[tag=Players] run function shriek:gamehandler/runes/spells/rune_give

## Functions for Maps
function shriek:gamehandler/maphandlers/hideobjects
function shriek:gamehandler/maphandlers/sculkedmap/master