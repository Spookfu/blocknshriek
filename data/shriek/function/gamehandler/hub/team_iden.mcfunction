# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/team-iden.mcfunction","color":"white","bold":false}]

# Inventory Locks
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{team:1b}}}}]
clear @s[nbt=!{equipment:{offhand:{id:"minecraft:white_dye",count:1}}}] white_dye[custom_data={team:1b}]

# Assign Team Identifier in Offhand

    item replace entity @s[team=Red] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["red"]}]
    item replace entity @s[team=Orange] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["orange"]}]
    item replace entity @s[team=Yellow] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["yellow"]}]
    item replace entity @s[team=Green] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["green"]}]
    item replace entity @s[team=Blue] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["blue"]}]
    item replace entity @s[team=Purple] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["purple"]}]
    item replace entity @s[team=Spectators] weapon.offhand with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={red:1b,team:1b},custom_model_data={strings:["spectators"]}]