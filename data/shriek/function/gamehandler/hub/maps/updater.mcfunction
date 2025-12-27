# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/updater.mcfunction","color":"white","bold":false}]

playsound block.trial_spawner.eject_item master @s[tag=.mapConsideringBase] ~ ~ ~ 1 2 1
execute store result score .sculkVotes mapVoting run execute if entity @a[tag=.mapChosenIsSculk]
execute store result score .stalkingVotes mapVoting run execute if entity @a[tag=.mapChosenIsStalking]
execute store result score .cryptVotes mapVoting run execute if entity @a[tag=.mapChosenIsCrypt]

data modify entity @e[limit=1,type=text_display,tag=sculkMap] text set value [{"text":"Vote(s) | "},{"score":{"name":".sculkVotes","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=.mapChosenIsSsculk]"}]
data modify entity @e[limit=1,type=text_display,tag=stalkMap] text set value [{"text":"Vote(s) | "},{"score":{"name":".stalkingVotes","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=.mapChosenIsStalking]"}]
data modify entity @e[limit=1,type=text_display,tag=creakMap] text set value [{"text":"Vote(s) | "},{"score":{"name":".cryptVotes","objective":"mapVoting"},"color":"dark_aqua","bold":true},{"text":"\n"},{"selector":"@a[tag=.mapChosenIsCrypt]"}]

scoreboard players set .totalVotes mapVoting 0
scoreboard players operation .totalVotes mapVoting += .sculkVotes mapVoting
scoreboard players operation .totalVotes mapVoting += .cryptVotes mapVoting
scoreboard players operation .totalVotes mapVoting += .stalkingVotes mapVoting