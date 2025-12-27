# Debug
execute if score .functionDebug debug matches 1 run tellraw @a [{"text":"[DEBUG]","color":"blue","bold":true},{"text":" Running function hub/maps/dungeon.mcfunction","color":"white","bold":false}]

playsound minecraft:block.trial_spawner.ambient_ominous master @s[tag=!.mapConsideringBase] ~ ~ ~ 1 0.1 1
tag @s add .mapConsideringDungeon
execute if entity @s[tag=!.mapConsideringBase] run function shriek:gamehandler/hub/maps/base
title @s title {"text":"CREAKING CRYPTS","color":"red","bold":true}
title @s subtitle "ʀɪɢʜᴛ ᴄʟɪᴄᴋ \ue007 ᴛᴏ ᴠᴏᴛᴇ ꜰᴏʀ"

item replace entity @s hotbar.4 with minecraft:white_dye[item_name="",minecraft:enchantment_glint_override=false,minecraft:custom_data={crypt:1b,map:1b},custom_model_data={strings:["select"]},consumable={consume_seconds:0,sound:"item.spyglass.use",has_consume_particles:0b},use_cooldown={seconds:0.5}]
clear @s[nbt=!{Inventory:[{Slot:4b, components:{"minecraft:custom_data":{map:1b}}}]}] white_dye
execute at @s run kill @e[distance=1..4,type=item,nbt={Item:{components:{"minecraft:custom_data":{map:1b}}}}]
