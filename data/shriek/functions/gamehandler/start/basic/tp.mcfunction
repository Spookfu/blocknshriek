# Map 1
execute if score map gameHandler matches 1 run execute as @a[team=Player1] run function shriek:gamehandler/start/tps/bluespawns
execute if score map gameHandler matches 1 run execute as @a[team=Player2] run function shriek:gamehandler/start/tps/redspawns

execute if score map gameHandler matches 1 run tp @a[team=Spectators] -12.5 -41 5.5 facing -13 -41 5

# Others
playsound minecraft:item.ominous_bottle.dispose master @a ~ ~ ~ 1 0.1 1
playsound minecraft:event.mob_effect.trial_omen master @a ~ ~ ~ 1 0.1 1
effect clear @a
scoreboard players set start gameHandler 0
scoreboard players set game gameHandler 1
tag @a[team=Player1] add Players
tag @a[team=Player2] add Players
tag @a[team=Spectators] remove Players

gamemode spectator @a[team=Spectators]
gamemode adventure @a[tag=Players]

attribute @a[tag=Players,limit=1] minecraft:generic.max_health base set 1
attribute @a[tag=!Players,limit=1] minecraft:generic.max_health base set 20

