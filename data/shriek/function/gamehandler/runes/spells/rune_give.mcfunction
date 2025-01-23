kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{rune:1}}}}]
execute if score @s slot3 matches 1.. run clear @s[nbt=!{Inventory:[{count:1,Slot:2b, components:{"minecraft:custom_data":{rune:1}}}]},tag=Players] #shriek:runes
execute if score @s slot2 matches 1.. run clear @s[nbt=!{Inventory:[{count:1,Slot:1b, components:{"minecraft:custom_data":{rune:1}}}]},tag=Players] #shriek:runes
execute if score @s slot1 matches 1.. run clear @s[nbt=!{Inventory:[{count:1,Slot:0b, components:{"minecraft:custom_data":{rune:1}}}]},tag=Players] #shriek:runes

execute if score @s slot1 matches 1 run loot replace entity @s hotbar.0 loot shriek:1movement
execute if score @s slot1 matches 2 run loot replace entity @s hotbar.0 loot shriek:2trap-inter
execute if score @s slot1 matches 3 run loot replace entity @s hotbar.0 loot shriek:3trap_modif
execute if score @s slot1 matches 4 run loot replace entity @s hotbar.0 loot shriek:4trap_floor
execute if score @s slot1 matches 5 run loot replace entity @s hotbar.0 loot shriek:5rune_modif
execute if score @s slot1 matches 6 run loot replace entity @s hotbar.0 loot shriek:6barrier
execute if score @s slot1 matches 7 run loot replace entity @s hotbar.0 loot shriek:7project


execute if score @s slot2 matches 1 run loot replace entity @s hotbar.1 loot shriek:1movement
execute if score @s slot2 matches 2 run loot replace entity @s hotbar.1 loot shriek:2trap-inter
execute if score @s slot2 matches 3 run loot replace entity @s hotbar.1 loot shriek:3trap_modif
execute if score @s slot2 matches 4 run loot replace entity @s hotbar.1 loot shriek:4trap_floor
execute if score @s slot2 matches 5 run loot replace entity @s hotbar.1 loot shriek:5rune_modif
execute if score @s slot2 matches 6 run loot replace entity @s hotbar.1 loot shriek:6barrier
execute if score @s slot2 matches 7 run loot replace entity @s hotbar.1 loot shriek:7project


execute if score @s slot3 matches 1 run loot replace entity @s hotbar.2 loot shriek:1movement
execute if score @s slot3 matches 2 run loot replace entity @s hotbar.2 loot shriek:2trap-inter
execute if score @s slot3 matches 3 run loot replace entity @s hotbar.2 loot shriek:3trap_modif
execute if score @s slot3 matches 4 run loot replace entity @s hotbar.2 loot shriek:4trap_floor
execute if score @s slot3 matches 5 run loot replace entity @s hotbar.2 loot shriek:5rune_modif
execute if score @s slot3 matches 6 run loot replace entity @s hotbar.2 loot shriek:6barrier
execute if score @s slot3 matches 7 run loot replace entity @s hotbar.2 loot shriek:7project