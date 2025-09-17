title @a title {"text":"CREAKING CRYPTS","color":"red","bold":true}
title @a subtitle "ᴠᴏᴛᴇ ꜰᴏʀ"

item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={crypt:1b,map:1b},custom_model_data={strings:["select"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
clear @s[nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{map:1b}}}]}] white_dye
execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{map:1b}}}}]