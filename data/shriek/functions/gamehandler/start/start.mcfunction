title @a subtitle {"text":"The game will start in","color": "white"}
title @a title ["",{"text":"> ","color":"blue","bold":true},{"score":{"name": "timer","objective": "gameHandler"}},{"text":" <","color":"red","bold":true}]
execute if score timer gameHandler matches 0 run title @a title {"text":"SHRIEK","color":"dark_red"}
execute if score timer gameHandler matches 0 run title @a subtitle ["",{"text":"> ","color":"blue","bold":true},{"text":"Good Luck...","color": "white"},{"text":" <","color":"red","bold":true}]
execute at @a run playsound minecraft:item.axe.scrape master @a ~ ~ ~ 1 1 1
execute unless score timer gameHandler matches 0 run schedule function shriek:gamehandler/start/start 1s

execute as @a run execute if score timer gameHandler matches 0 run function shriek:gamehandler/start/basic/roll

execute unless score timer gameHandler matches 0 run scoreboard players remove timer gameHandler 1