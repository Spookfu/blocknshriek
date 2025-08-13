# Entry Sound
    playsound minecraft:entity.warden.nearby_closer master @s[tag=!selecting_team] ~ ~ ~ 1 1 1
    playsound block.beacon.activate master @s[tag=!selecting_team] ~ ~ ~ 1 1 1
    effect give @s[tag=!selecting_team] darkness infinite 0 true
    effect give @s[tag=!selecting_team] blindness infinite 0 true
    effect give @s[tag=!selecting_team] slowness infinite 3 true
    tag @s[team=Red] add Red
    tag @s[team=Yellow] add Yellow
    tag @s[team=Orange] add Orange
    tag @s[team=Green] add Green
    tag @s[team=Blue] add Blue
    tag @s[team=Purple] add Purple
    tag @s[team=Spectators] add Spectators
    title @s[tag=!selecting_team] times 0t 2t 4t
# Prevents Multiple Entry Sound Play
    tag @s add selecting_team 

# Menu Left & Right + Sound System & Title
    execute if entity @s[scores={teams-selection=1}] run title @s title {"text":"\ue013"}
    execute if entity @s[scores={teams-selection=2}] run title @s title {"text":"\ue012"}
    execute if entity @s[scores={teams-selection=3}] run title @s title {"text":"\ue010"}
    execute if entity @s[scores={teams-selection=4}] run title @s title {"text":"\ue014"}
    execute if entity @s[scores={teams-selection=5}] run title @s title {"text":"\ue009"}
    execute if entity @s[scores={teams-selection=6}] run title @s title {"text":"\ue008"}
    execute if entity @s[scores={teams-selection=7}] run title @s title {"text":"\ue011"}

    scoreboard players remove @s[tag=left,scores={teams-selection=1..}] teams-selection 1
    scoreboard players add @s[tag=right,scores={teams-selection=..7}] teams-selection 1

    execute at @s[tag=right,scores={teams-selection=8}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1
    execute at @s[tag=left,scores={teams-selection=0}] run playsound item.spyglass.use master @s ~ ~ ~ 1 1 1

    scoreboard players set @s[tag=left,scores={teams-selection=0}] teams-selection 7
    scoreboard players set @s[tag=right,scores={teams-selection=8}] teams-selection 1

    execute if score @s team-selection matches 1 run title @s title {"text":"\uE008"}
    execute if score @s team-selection matches 2 run title @s title {"text":"\uE009"}
    execute if score @s team-selection matches 3 run title @s title {"text":"\uE0010"}
    execute if score @s team-selection matches 4 run title @s title {"text":"\uE0011"}
    execute if score @s team-selection matches 5 run title @s title {"text":"\uE0012"}
    execute if score @s team-selection matches 6 run title @s title {"text":"\uE0013"}
    execute if score @s team-selection matches 7 run title @s title {"text":"\uE007"}

    tag @s remove left
    tag @s remove right
    advancement revoke @s only shriek:item-rightc-detect

# Hotbar Menu Item Lockers
    clear @s[nbt=!{Inventory:[{Slot:3b, components:{"minecraft:custom_data":{left:1b,team:1b}}}]},tag=selecting_team] nether_star
    clear @s[nbt=!{Inventory:[{Slot:5b, components:{"minecraft:custom_data":{right:1b,team:1b}}}]},tag=selecting_team] nether_star

    clear @s[scores={teams-selection=1..7},nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{team:1b}}}]},tag=selecting_team] white_dye

    execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{team:1b}}}}]

    item replace entity @s hotbar.3 with minecraft:nether_star[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={left:1b,team:1b},custom_model_data={strings:["left"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
    item replace entity @s hotbar.5 with minecraft:nether_star[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={right:1b,team:1b},custom_model_data={strings:["right"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5},]

execute as @s[scores={teams-selection=1}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Red","color":"red","text":"RED","score":"red"}
execute as @s[scores={teams-selection=2}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Orange","color":"#FC7546","text":"ORANGE","score":"orange"}
execute as @s[scores={teams-selection=3}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Yellow","color":"yellow","text":"YELLOW","score":"yellow"}
execute as @s[scores={teams-selection=4}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Green","color":"green","text":"GREEN","score":"green"}
execute as @s[scores={teams-selection=5}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Blue","color":"blue","text":"BLUE","score":"blue"}
execute as @s[scores={teams-selection=6}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Purple","color":"light_purple","text":"PURPLE","score":"purple"}
execute as @s[scores={teams-selection=7}] run function shriek:gamehandler/hub/teams/shared/checks-ss {"team":"Spectators","color":"gray","text":"SPECTATORS","score":"spectators"}

# Menu Effects
# execute as @e[tag=rotate,limit=1,type=block_display] run execute at @s run tp @s ~ ~ ~ ~5 ~10
# Gives an Item w/ Corresponding Texture based on Team Status (Full, Empty, Already Considering, Already On)

# execute if entity @s[tag=Red,scores={teams-selection=1}] run execute if entity @s[scores={teams-selection=1}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red-already"]}]
# execute if entity @s[tag=Orange,scores={teams-selection=2}] run execute if entity @s[scores={teams-selection=2}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange-already"]}]
# execute if entity @s[tag=Yellow,scores={teams-selection=3}] run execute if entity @s[scores={teams-selection=3}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow-already"]}]
# execute if entity @s[tag=Green,scores={teams-selection=4}] run execute if entity @s[scores={teams-selection=4}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green-already"]}]
# execute if entity @s[tag=Blue,scores={teams-selection=5}] run execute if entity @s[scores={teams-selection=5}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue-already"]}]
# execute if entity @s[tag=Purple,scores={teams-selection=6}] run execute if entity @s[scores={teams-selection=6}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple-already"]}]
# execute if entity @s[tag=Spectators,scores={teams-selection=7}] run execute if entity @s[scores={teams-selection=7}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={spectator:1b,team:1b},custom_model_data={strings:["spectators-already"]}]

# execute if entity @s[team=Red-Consider,scores={teams-selection=1}] run execute if entity @s[scores={teams-selection=1}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red-chosen"]}]
# execute if entity @s[team=Orange-Consider,scores={teams-selection=2}] run execute if entity @s[scores={teams-selection=2}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange-chosen"]}]
# execute if entity @s[team=Yellow-Consider,scores={teams-selection=3}] run execute if entity @s[scores={teams-selection=3}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow-chosen"]}]
# execute if entity @s[team=Green-Consider,scores={teams-selection=4}] run execute if entity @s[scores={teams-selection=4}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green-chosen"]}]
# execute if entity @s[team=Blue-Consider,scores={teams-selection=5}] run execute if entity @s[scores={teams-selection=5}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue-chosen"]}]
# execute if entity @s[team=Purple-Consider,scores={teams-selection=6}] run execute if entity @s[scores={teams-selection=6}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple-chosen"]}]
# execute if entity @s[team=Spectators-Consider,scores={teams-selection=7}] run execute if entity @s[scores={teams-selection=7}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.trade",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={spectators:1b,team:1b},custom_model_data={strings:["spectators-chosen"]}]

# execute if score red teams matches 0 run execute if entity @s[scores={teams-selection=1}] run return run item replace entity @s[scores={teams-selection=1}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red"]}]
# execute if score orange teams matches 0 run execute if entity @s[scores={teams-selection=2}] run return run item replace entity @s[scores={teams-selection=2}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange"]}]
# execute if score yellow teams matches 0 run execute if entity @s[scores={teams-selection=3}] run return run item replace entity @s[scores={teams-selection=3}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow"]}]
# execute if score green teams matches 0 run execute if entity @s[scores={teams-selection=4}] run return run item replace entity @s[scores={teams-selection=4}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green"]}]
# execute if score blue teams matches 0 run execute if entity @s[scores={teams-selection=5}] run return run item replace entity @s[scores={teams-selection=5}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue"]}]
# execute if score purple teams matches 0 run execute if entity @s[scores={teams-selection=6}] run return run item replace entity @s[scores={teams-selection=6}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple"]}]
# execute if entity @s[scores={teams-selection=7}] run execute if entity @s[scores={teams-selection=7}] run return run item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.yes",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={spectators:1b,team:1b},custom_model_data={strings:["spectators"]}]

# execute if score red teams matches 1 run execute if entity @s[scores={teams-selection=1}] run return run item replace entity @s[scores={teams-selection=1}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red-blocked"]}]
# execute if score orange teams matches 1 run execute if entity @s[scores={teams-selection=2}] run return run item replace entity @s[scores={teams-selection=2}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={orange:1b,team:1b},custom_model_data={strings:["orange-blocked"]}]
# execute if score yellow teams matches 1 run execute if entity @s[scores={teams-selection=3}] run return run item replace entity @s[scores={teams-selection=3}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={yellow:1b,team:1b},custom_model_data={strings:["yellow-blocked"]}]
# execute if score green teams matches 1 run execute if entity @s[scores={teams-selection=4}] run return run item replace entity @s[scores={teams-selection=4}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={green:1b,team:1b},custom_model_data={strings:["green-blocked"]}]
# execute if score blue teams matches 1 run execute if entity @s[scores={teams-selection=5}] run return run item replace entity @s[scores={teams-selection=5}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={blue:1b,team:1b},custom_model_data={strings:["blue-blocked"]}]
# execute if score purple teams matches 1 run execute if entity @s[scores={teams-selection=6}] run return run item replace entity @s[scores={teams-selection=6}] hotbar.4 with minecraft:white_dye[item_name="",consumable={consume_seconds:0,sound:"entity.villager.no",has_consume_particles:0b},use_cooldown={seconds:0.5},minecraft:enchantment_glint_override=false,minecraft:custom_data={purple:1b,team:1b},custom_model_data={strings:["purple-blocked"]}]

## `teams-selection` Index Values
# 0 Default - Not Chosen
# 1 Red
# 2 Orange
# 3 Yellow
# 4 Green
# 5 Blue
# 6 Purple
# 7 Spectators