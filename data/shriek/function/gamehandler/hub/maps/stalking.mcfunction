# Debug
execute if score functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/stalking.mcfunction","color":"white","bold":false}]

playsound minecraft:entity.creaking.death master @s[tag=!map] ~ ~ ~ 1 0.1 1
execute if entity @s[tag=!map] run function shriek:gamehandler/hub/maps/base
tag @s add map_stalking
title @s title {"text":"STALKING FOREST","color":"gray","bold":true}
title @s subtitle "ʀɪɢʜᴛ ᴄʟɪᴄᴋ \ue007 ᴛᴏ ᴠᴏᴛᴇ ꜰᴏʀ"

item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={infest:1b,map:1b},custom_model_data={strings:["select"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
clear @s[nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{map:1b}}}]}] white_dye
execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{map:1b}}}}]
