# Map 1 Spawnpoints Roll
execute if score map gameHandler matches 1 run execute as @a[team=Blue] run function shriek:gamehandler/start/tps/map1/bluespawns
execute if score map gameHandler matches 1 run execute as @a[team=Red] run function shriek:gamehandler/start/tps/map1/redspawns

# Map 1 Spectator Spawnpoint
execute if score map gameHandler matches 1 run tp @a[team=Spectators] -12.5 -41 5.5 facing -13 -41 5


# Taggings
tag @a[team=Blue] add Players
tag @a[team=Red] add Players
tag @a[team=Spectators] remove Players

# Gamemodes
gamemode spectator @a[team=Spectators]
gamemode adventure @a[tag=Players]

# Health
attribute @a[tag=Players,limit=1] minecraft:generic.max_health base set 1
attribute @a[tag=!Players,limit=1] minecraft:generic.max_health base set 20

# Shrieker Setups
scoreboard players set @a[tag=Players] shrieker-timer 30
scoreboard players set @a[tag=Players] shrieker-on 1
scoreboard players set @a[tag=Players] shrieker-baser 0
scoreboard players set @a[tag=Players] shrieker-dura 0
function shriek:gamehandler/shrieker/loaded
function shriek:gamehandler/shrieker/timing

# Scoreboard Setups
scoreboard players set @a[tag=Players] heartbeat-timer 0
scoreboard players set @a[tag=Players] looting 0

# Start Game Scene & Setup
playsound minecraft:item.ominous_bottle.dispose master @a ~ ~ ~ 1 0.1 1
playsound minecraft:event.mob_effect.trial_omen master @a ~ ~ ~ 1 0.1 1
effect clear @a
scoreboard players set start gameHandler 0
scoreboard players set game gameHandler 1
scoreboard players set timeSegments gameHandler 9
bossbar set minecraft:game_timer players @a
bossbar set minecraft:game_timer visible true
scoreboard players set gameTimer gameHandler 12000
function shriek:gamehandler/start/timer
bossbar set minecraft:map visible false