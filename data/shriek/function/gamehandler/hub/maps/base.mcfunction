execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/base.mcfunction","color":"white","bold":false}]
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.1 1

tag @s add map
title @s times 0t 4t 2t
