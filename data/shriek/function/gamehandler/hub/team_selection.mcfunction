# Entry Sound
playsound minecraft:entity.warden.nearby_closer master @s[tag=!selecting_team] ~ ~ ~ 1 1 1
# Prevents Multiple Entry Sound Play
tag @s add selecting_team 

# Menu Left & Right + Sound
title @s title {"text":"\uE007"}

scoreboard players remove @s[tag=left,scores={teams-selection=1..}] teams-selection 1
scoreboard players add @s[tag=right,scores={teams-selection=..7}] teams-selection 1

execute at @s[tag=right,scores={teams-selection=8}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1
execute at @s[tag=left,scores={teams-selection=0}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1

scoreboard players set @s[tag=left,scores={teams-selection=0}] teams-selection 7
scoreboard players set @s[tag=right,scores={teams-selection=8}] teams-selection 1

tag @s remove left
tag @s remove right
advancement revoke @s only shriek:item-rightc-detect

# Hotbar Menu Item Lockers
clear @s[nbt=!{Inventory:[{Slot:3b, components:{"minecraft:custom_data":{left:1b,team:1b}}}]},tag=selecting_team] nether_star
clear @s[nbt=!{Inventory:[{Slot:5b, components:{"minecraft:custom_data":{right:1b,team:1b}}}]},tag=selecting_team] nether_star

clear @s[scores={teams-selection=1},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{red:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=2},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{orange:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=3},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{yellow:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=4},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{green:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=5},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{blue:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=6},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{purple:1b,team:1b}}}]},tag=selecting_team] white_dye
clear @s[scores={teams-selection=7},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{spectator:1b,team:1b}}}]},tag=selecting_team] white_dye

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{team:1b}}}}]

item replace entity @s hotbar.3 with minecraft:nether_star[minecraft:enchantment_glint_override=false,minecraft:custom_data={left:1b,team:1b},custom_model_data={strings:["left"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
item replace entity @s hotbar.5 with minecraft:nether_star[minecraft:enchantment_glint_override=false,minecraft:custom_data={right:1b,team:1b},custom_model_data={strings:["right"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5},]

# Gives an Item w/ Corresponding Texture based on Team Status (Full, Empty, Already On)

execute if score red teams matches 0 run item replace entity @s[scores={teams-selection=1}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red"]}]
execute if score orange teams matches 0 run item replace entity @s[scores={teams-selection=2}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange"]}]
execute if score yellow teams matches 0 run item replace entity @s[scores={teams-selection=3}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow"]}]
execute if score green teams matches 0 run item replace entity @s[scores={teams-selection=4}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green"]}]
execute if score blue teams matches 0 run item replace entity @s[scores={teams-selection=5}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue"]}]
execute if score purple teams matches 0 run item replace entity @s[scores={teams-selection=6}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple"]}]
item replace entity @s[scores={teams-selection=7}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={spectator:1b,team:1b},custom_model_data={strings:["spectator"]}]

execute if score red teams matches 1 run item replace entity @s[scores={teams-selection=1}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red-blocked"]}]
execute if score orange teams matches 1 run item replace entity @s[scores={teams-selection=2}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange-blocked"]}]
execute if score yellow teams matches 1 run item replace entity @s[scores={teams-selection=3}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow-blocked"]}]
execute if score green teams matches 1 run item replace entity @s[scores={teams-selection=4}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green-blocked"]}]
execute if score blue teams matches 1 run item replace entity @s[scores={teams-selection=5}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue-blocked"]}]
execute if score purple teams matches 1 run item replace entity @s[scores={teams-selection=6}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple-blocked"]}]

item replace entity @s[team=Red,scores={teams-selection=1}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red-chosen"]}]
item replace entity @s[team=Orange,scores={teams-selection=2}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange-chosen"]}]
item replace entity @s[team=Yellow,scores={teams-selection=3}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow-chosen"]}]
item replace entity @s[team=Green,scores={teams-selection=4}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green-chosen"]}]
item replace entity @s[team=Blue,scores={teams-selection=5}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue-chosen"]}]
item replace entity @s[team=Purple,scores={teams-selection=6}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple-chosen"]}]
item replace entity @s[team=Spectators,scores={teams-selection=7}] hotbar.4 with minecraft:white_dye[consumable={consume_seconds:0,sound:"ui.cartography_table.take_result",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={spectator:1b,team:1b},custom_model_data={strings:["spectator-chosen"]}]


## `teams-selection` Index Values
# 0 Default - Not Chosen
# 1 Red
# 2 Orange
# 3 Yellow
# 4 Green
# 5 Blue
# 6 Purple
# 7 Spectators


# Menu Effects
effect give @s darkness 2 0 true
effect give @s blindness 2 0 true
effect give @s slowness 2 3 true




