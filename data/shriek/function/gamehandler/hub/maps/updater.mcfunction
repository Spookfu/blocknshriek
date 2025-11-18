playsound block.trial_spawner.eject_item master @s[tag=map] ~ ~ ~ 1 2 1
execute store result score sculk mapVoting run execute if entity @a[tag=chosen_sculk]
execute store result score stalking mapVoting run execute if entity @a[tag=chosen_stalking]
execute store result score dungeon mapVoting run execute if entity @a[tag=chosen_dungeon]

data modify entity @e[limit=1,type=text_display,tag=sculkMap] text set value [{"text":"Vote(s) | "},{"score":{"name":"sculk","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=chosen_sculk]"}]
data modify entity @e[limit=1,type=text_display,tag=stalkMap] text set value [{"text":"Vote(s) | "},{"score":{"name":"stalking","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=chosen_stalking]"}]
data modify entity @e[limit=1,type=text_display,tag=creakMap] text set value [{"text":"Vote(s) | "},{"score":{"name":"dungeon","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=chosen_dungeon]"}]

scoreboard players set total mapVoting 0
scoreboard players operation total mapVoting += sculk mapVoting
scoreboard players operation total mapVoting += dungeon mapVoting
scoreboard players operation total mapVoting += stalking mapVoting