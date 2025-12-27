# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/choose-crypt.mcfunction","color":"white","bold":false}]

tag @s remove .mapChosenIsSculk
tag @s remove .mapChosenIsStalking
tag @s add .mapChosenIsCrypt
execute as @s run function shriek:gamehandler/hub/maps/updater