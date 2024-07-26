# Map 1 Spawnpoints Roll
execute if score map gameHandler matches 1 run execute as @a[team=Player1] run function shriek:gamehandler/start/tps/map1/bluespawns
execute if score map gameHandler matches 1 run execute as @a[team=Player2] run function shriek:gamehandler/start/tps/map1/redspawns

# Map 1 Spectator Spawnpoint
execute if score map gameHandler matches 1 run tp @a[team=Spectators] -12.5 -41 5.5 facing -13 -41 5



# Taggings
tag @a[team=Player1] add Players
tag @a[team=Player2] add Players
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
item replace entity @a hotbar.4 with crossbow[custom_name='["",{"text":"Shrieker","italic":false,"bold":true,"color":"red"},{"text":" ","italic":false,"bold":true},{"text":"✧","italic":false,"color":"dark_purple"}]',lore=['["",{"text":"A way to victory. Shriek your","italic":false,"color":"gray"}]','["",{"text":"opponents, but be ","italic":false,"color":"gray"},{"text":"precise","italic":false,"color":"dark_green"},{"text":".","italic":false,"color":"gray"}]','[""]','["",{"text":"⏳","italic":false,"color":"gold"},{"text":" ","italic":false},{"text":"Cooldown:","italic":false,"bold":true,"color":"gold"},{"text":" ","italic":false},{"text":"120s","italic":false,"color":"white"}]','["",{"text":"a","italic":false,"color":"dark_green","obfuscated":true},{"italic":false,"color":"dark_green","text":" "},{"italic":false,"color":"dark_green","text":"Points Applicable:","bold":true},{"italic":false,"text":" "},{"italic":false,"text":"1000","color":"white"}]','["",{"italic":false,"text":" "}]'],hide_additional_tooltip={},minecraft:damage=0,minecraft:enchantment_glint_override=true,minecraft:max_damage=120,minecraft:custom_data={shrieker:1}]
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