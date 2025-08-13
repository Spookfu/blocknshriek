# Voting Function
setblock -20 -61 43 minecraft:redstone_lamp[lit=false]
setblock -14 -61 43 minecraft:redstone_lamp[lit=false]
setblock -8 -61 43 minecraft:redstone_lamp[lit=false]

execute if score map gameHandler matches 1 run setblock -20 -61 43 minecraft:redstone_lamp[lit=true]
execute if score map gameHandler matches 2 run setblock -14 -61 43 minecraft:redstone_lamp[lit=true]
execute if score map gameHandler matches 3 run setblock -8 -61 43 minecraft:redstone_lamp[lit=true]