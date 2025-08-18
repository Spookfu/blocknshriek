execute as @s[tag=!teaming_entry] run function shriek:gamehandler/hub/teams/selection-screen/entry
tag @s add teaming_entry 
# Hotbar Menu Item Lockers
    clear @s[nbt=!{Inventory:[{Slot:3b, components:{"minecraft:custom_data":{left:1b,team:1b}}}]},tag=selecting_team] nether_star
    clear @s[nbt=!{Inventory:[{Slot:5b, components:{"minecraft:custom_data":{right:1b,team:1b}}}]},tag=selecting_team] nether_star

    clear @s[scores={teams-selection=1..7},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{team:1b}}}]},tag=selecting_team] white_dye

    execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{team:1b}}}}]

    item replace entity @s hotbar.3 with minecraft:nether_star[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={left:1b,team:1b},custom_model_data={strings:["left"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
    item replace entity @s hotbar.5 with minecraft:nether_star[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={right:1b,team:1b},custom_model_data={strings:["right"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5},]

    item replace entity @s hotbar.4 with minecraft:white_dye[minecraft:custom_data={team:1b},minecraft:custom_model_data={strings:["base"]},item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false]

# Team Functions
    # execute as @s[scores={teams-selection=1}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Red","color":"red","text":"RED","score":"red"}
    # execute as @s[scores={teams-selection=2}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Orange","color":"#FC7546","text":"ORANGE","score":"orange"}
    # execute as @s[scores={teams-selection=3}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Yellow","color":"yellow","text":"YELLOW","score":"yellow"}
    # execute as @s[scores={teams-selection=4}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Green","color":"green","text":"GREEN","score":"green"}
    # execute as @s[scores={teams-selection=5}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Blue","color":"blue","text":"BLUE","score":"blue"}
    # execute as @s[scores={teams-selection=6}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Purple","color":"light_purple","text":"PURPLE","score":"purple"}
    # execute as @s[scores={teams-selection=7}] run function shriek:gamehandler/hub/teams/shared/selection-screen/checks-ss {"team":"Spectators","color":"gray","text":"SPECTATORS","score":"spectators"}

## `teams-selection` Index Values
# 0 Default - Not Chosen
# 1 Red
# 2 Orange
# 3 Yellow
# 4 Green
# 5 Blue
# 6 Purple
# 7 Spectators