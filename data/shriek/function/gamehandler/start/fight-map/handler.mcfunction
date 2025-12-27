# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/fight-map/handler.mcfunction","color":"white","bold":false}]

# Setups Team System Based on Ties.
execute if score .mapSelected mapVoting matches 4 run tag @a[tag=.mapChosenIsSculk,limit=1] add .mapTeam1
execute if score .mapSelected mapVoting matches 4 run tag @a[tag=.mapChosenIsStalking,limit=1] add .mapTeam2

execute if score .mapSelected mapVoting matches 5 run tag @a[tag=.mapChosenIsSculk,limit=1] add .mapTeam1
execute if score .mapSelected mapVoting matches 5 run tag @a[tag=.mapChosenIsCrypt,limit=1] add .mapTeam2

execute if score .mapSelected mapVoting matches 6 run tag @a[tag=.mapChosenIsStalking,limit=1] add .mapTeam1
execute if score .mapSelected mapVoting matches 6 run tag @a[tag=.mapChosenIsCrypt,limit=1] add .mapTeam2

execute if score .mapSelected mapVoting matches 7 run tag @a[tag=.mapChosenIsCrypt,limit=1] add .mapTeam1
execute if score .mapSelected mapVoting matches 7 run tag @a[tag=.mapChosenIsSculk,limit=1] add .mapTeam2
execute if score .mapSelected mapVoting matches 7 run tag @a[tag=.mapChosenIsStalking,limit=1] add .mapTeam3

tp @a[tag=.mapTeam1] -107.5 -57 45.5 90 0
tp @a[tag=.mapTeam2] -152.5 -60 45.5 270 0
tp @a[tag=.mapTeam3] -129 -56 27 360 0

clear @a
gamemode adventure @a[tag=.mapTeam1]
gamemode adventure @a[tag=.mapTeam2]
gamemode adventure @a[tag=.mapTeam3]
execute as @a run attribute @s minecraft:max_health base set 20
effect give @a saturation 5 255 true
item replace entity @a armor.head with minecraft:iron_helmet
item replace entity @a armor.chest with minecraft:iron_chestplate
item replace entity @a armor.legs with minecraft:iron_leggings
item replace entity @a armor.feet with minecraft:iron_boots
item replace entity @a weapon.offhand with minecraft:shield
item replace entity @a hotbar.0 with minecraft:iron_sword
item replace entity @a hotbar.1 with minecraft:iron_axe
item replace entity @a hotbar.2 with minecraft:bow
item replace entity @a hotbar.3 with minecraft:arrow 64
item replace entity @a hotbar.4 with minecraft:cooked_beef 16
item replace entity @a hotbar.5 with minecraft:crossbow
item replace entity @a hotbar.6 with golden_apple 3
gamemode spectator @a[tag=!.mapTeam1,tag=!.mapTeam2,tag=!.mapTeam3]
tp @a[tag=!.mapTeam1,tag=!.mapTeam2] -128 -49 44

execute as @a at @s run playsound minecraft:music_disc.precipice master @s ~ ~ ~ 15 1 0.1

scoreboard objectives add mapKills playerKillCount

