title @s title {"text":"SCULKED INSTITUTE","color":"aqua","bold":true}
title @s subtitle "ᴠᴏᴛᴇ ꜰᴏʀ"

clear @s[nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{map:1b}}}]}] white_dye
item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={shriek:1b,map:1b},custom_model_data={strings:["select"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{map:1b}}}}]