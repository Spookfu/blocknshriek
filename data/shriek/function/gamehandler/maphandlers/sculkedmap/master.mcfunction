# Juke Box
execute as @e[type=interaction,tag=juke] on attacker run function shriek:gamehandler/maphandlers/sculkedmap/juke_off
execute as @e[type=interaction,tag=juke] on target run function shriek:gamehandler/maphandlers/sculkedmap/juke

# Lab Door
execute if block 37 -41 5 minecraft:spruce_door[open=true] run title @p actionbar {"text":"This door is locked...?","color":"gray"}
execute if block 37 -41 5 minecraft:spruce_door[open=true] run playsound minecraft:block.chest.locked master @a 37 -41 5 1 0.1 0.1
execute if block 37 -41 5 minecraft:spruce_door[open=true] run setblock 37 -41 5 minecraft:spruce_door[open=false]

# FX FUnctions
function shriek:gamehandler/maphandlers/sculkedmap/gate_fx