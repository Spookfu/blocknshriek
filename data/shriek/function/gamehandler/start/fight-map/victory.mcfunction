execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/fight-map/victory.mcfunction","color":"white","bold":false}]
execute if entity @a[scores={mapKills=1},tag=chosen_dungeon] run title @a title {"text":"Creaking Crypts Wins!","color":"red","bold":true}
execute if entity @a[scores={mapKills=1},tag=chosen_stalking] run title @a title {"text":"Stalking Forest Wins!","color":"gray","bold":true}
execute if entity @a[scores={mapKills=1},tag=chosen_sculk] run title @a title {"text":"Sculked Institute Wins!","color":"aqua","bold":true}

execute if entity @a[scores={mapKills=1},tag=chosen_dungeon] run scoreboard players set win mapVoting 3
execute if entity @a[scores={mapKills=1},tag=chosen_stalking] run scoreboard players set win mapVoting 2
execute if entity @a[scores={mapKills=1},tag=chosen_sculk] run scoreboard players set win mapVoting 1

scoreboard objectives remove mapKills
tp @a -13.5 -60 57.5 180 0

execute at @a run summon firework_rocket ~2 ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~2 ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~-2 ~ ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~ ~ ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~1 ~ ~-2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}

clear @a
gamemode adventure @a
tag @a remove team-1
tag @a remove team-2
schedule function shriek:gamehandler/start/display-game/title 5s