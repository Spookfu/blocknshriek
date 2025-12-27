# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps//choose-sculk.mcfunction","color":"white","bold":false}]

tag @s add .mapChosenIsSculk
tag @s remove .mapChosenIsStalking
tag @s remove .mapChosenIsCrypt
execute as @s run function shriek:gamehandler/hub/maps/updater