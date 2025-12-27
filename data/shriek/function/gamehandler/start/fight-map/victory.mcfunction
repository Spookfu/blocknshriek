execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function start/fight-map/victory.mcfunction","color":"white","bold":false}]

execute if entity @a[scores={mapKills=1},tag=.mapChosenIsCrypt] run title @a subtitle {"text":"Creaking Crypts Wins!","color":"red","bold":true}
execute if entity @a[scores={mapKills=1},tag=.mapChosenIsStalking] run title @a subtitle {"text":"Stalking Forest Wins!","color":"gray","bold":true}
execute if entity @a[scores={mapKills=1},tag=.mapChosenIsSculk] run title @a subtitle {"text":"Sculked Institute Wins!","color":"aqua","bold":true}

title @a title {"text":"VICTORY","color":"gold","bold":true}

execute if entity @a[scores={mapKills=1},tag=.mapChosenIsCrypt] run scoreboard players set .mapSelected mapVoting 3
execute if entity @a[scores={mapKills=1},tag=.mapChosenIsStalking] run scoreboard players set .mapSelected mapVoting 2
execute if entity @a[scores={mapKills=1},tag=.mapChosenIsSculk] run scoreboard players set .mapSelected mapVoting 1

scoreboard objectives remove mapKills
tp @a -13.5 -60 57.5 180 0

execute at @a run summon firework_rocket ~2 ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~2 ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~-2 ~ ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~ ~ ~2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}
execute at @a run summon firework_rocket ~1 ~ ~-2 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_twinkle:true,has_trail:true,colors:[I;16711680],fade_colors:[I;16755517]}]}}}}

clear @a
gamemode adventure @a
tag @a remove .mapTeam1
tag @a remove .mapTeam2
tag @a remove .mapTeam3
schedule function shriek:gamehandler/start/display-game/title 5s