# Map 1 Spawnpoints Roll
execute if score map gameHandler matches 1 run execute as @a[team=Blue] run function shriek:gamehandler/start/tp/map1/bluespawns
execute if score map gameHandler matches 1 run execute as @a[team=Red] run function shriek:gamehandler/start/tp/map1/redspawns
execute if score map gameHandler matches 1 run execute as @a[team=Orange] run function shriek:gamehandler/start/tp/map1/orangespawns
execute if score map gameHandler matches 1 run execute as @a[team=Green] run function shriek:gamehandler/start/tp/map1/greeenspawns
execute if score map gameHandler matches 1 run execute as @a[team=Yellow] run function shriek:gamehandler/start/tp/map1/yellowspawns
execute if score map gameHandler matches 1 run execute as @a[team=Purple] run function shriek:gamehandler/start/tp/map1/purplespawns

# Map 1 Spectator Spawnpoint
execute if score map gameHandler matches 1 run tp @a[team=Spectators] -12.5 -41 5.5 facing -13 -41 5


# Gamemodes
gamemode spectator @a[team=Spectators]
gamemode adventure @a[team=!Spectators]

# Health
attribute @a[team=!Spectators,limit=1] minecraft:max_health base set 1

# Shrieker Setups
scoreboard players set @a[team=!Spectators] shrieker-cd 40
item replace entity @a hotbar.4 with crossbow[minecraft:item_name=["",{"text":"Shrieker","italic":false,"color":"red","bold":true}],lore=[["",{"text":"|","italic":false,"color":"dark_red","bold":true},{"text":" Scare Count: []","italic":false,"color":"dark_red"}],["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}],[""],["",{"text":" Channel your inner strength","italic":false,"color":"#a08d8d"}],["",{"text":" and fear to pierce your","italic":false,"color":"#a08d8d"}],["",{"text":" enemies with a chilling scare.","italic":false,"color":"#a08d8d"}],[""],["",{"text":" ","italic":false},{"text":"⌚","italic":false,"color":"#00ff00"},{"text":" ","italic":false,"color":"dark_green"},{"text":"Cooldown:","italic":false,"color":"#408040"},{"text":" ","italic":false},{"text":"120","italic":false,"color":"#00ff00"},{"text":"s","italic":false,"color":"#00bf00"}],["",{"text":" ","italic":false},{"text":"☠","italic":false,"color":"#ffd500"},{"text":" ","italic":false},{"text":"Points:","italic":false,"color":"#807540"},{"text":" ","italic":false},{"text":"1000","italic":false,"color":"#ffd500"},{"text":"pts","italic":false,"color":"#bfaf60"}],[""],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※ ","italic":false,"color":"#e6b8b8"},{"text":"After ","italic":false,"color":"#a08d8d"},{"text":"Shrieking","italic":false,"color":"#e6b8b8"},{"text":", you'll be","italic":false,"color":"#a08d8d"}],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"Slowed Down ","italic":false,"color":"#e6b8b8"},{"text":"by ","italic":false,"color":"#a08d8d"},{"text":"50%","italic":false,"color":"#e6b8b8"},{"text":" for","italic":false,"color":"#a08d8d"}],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"5 Seconds","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}],[""],["",{"text":" ","italic":false,"color":"#a08d8d"},{"text":"※","italic":false,"color":"#e6b8b8"},{"text":" ","italic":false},{"text":"Cooldown","italic":false,"color":"#e6b8b8"},{"text":" can be reduced","italic":false,"color":"#a08d8d"}],["",{"text":" by taking ","italic":false,"color":"#a08d8d"},{"text":"certain actions","italic":false,"color":"#e6b8b8"},{"text":".","italic":false,"color":"#a08d8d"}],[""],["",{"text":"=======================","italic":false,"bold":true,"color":"dark_gray"}]],enchantment_glint_override=true,custom_data={shrieker:1},minecraft:max_damage=120,minecraft:damage=120]
tag @a[team=!Spectators] add shrieked
function shriek:gamehandler/shrieker/timing

# Scoreboard Setups
scoreboard players set @a[team=!Spectators] heartbeat-timer 0
scoreboard players set @a[team=!Spectators] looting 0
scoreboard players set start gameHandler 0
scoreboard players set game gameHandler 1


# Start Game Scene & Setup
playsound minecraft:item.ominous_bottle.dispose master @a ~ ~ ~ 1 0.1 1
playsound minecraft:event.mob_effect.trial_omen master @a ~ ~ ~ 1 0.1 1
effect clear @a

# Game Timer Setup
scoreboard players set timeSegments gameHandler 9
scoreboard players set gameTimer gameHandler 12000
bossbar set minecraft:game_timer players @a
bossbar set minecraft:game_timer visible true
function shriek:gamehandler/gametime/timer
bossbar set minecraft:map visible false