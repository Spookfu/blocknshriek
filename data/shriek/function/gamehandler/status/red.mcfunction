# Replaces the Status Item in a players hotbar with a "EXPOSED" Status, if the player is sprint-jumping, or sprinting.
item replace entity @s hotbar.8 with red_concrete[item_name='[{"text":"ʏᴏᴜ ᴀʀᴇ"},{"bold":true,"color":"dark_red","text":" EXPOSED ⏹⏹⏹"}]',lore=['[{"color":"gray","italic":false,"text":"Your"},{"color":"red","italic":false,"text":" foes "},{"italic":false,"text":"can see you through"}]','[{"color":"gray","italic":false,"text":"normal means. You are "},{"color":"dark_purple","italic":false,"text":"much more"}]','{"color":"dark_purple","italic":false,"text":"visble and audible"}','{"text":" "}','[{"color":"red","italic":false,"text":"- "},{"color":"red","italic":false,"text":"Visually visible"},{"color":"gray","italic":false,"text":" to others"}]','[{"color":"red","italic":false,"text":"- "},{"color":"red","italic":false,"text":"Visual"},{"color":"gray","italic":false,"text":"/"},{"color":"red","italic":false,"text":"audible "},{"color":"gray","italic":false,"text":"excess","underlined":true}]','{"color":"gray","italic":false,"text":"motion penalties"}','[{"color":"gold","italic":false,"text":"* "},{"color":"gray","italic":false,"text":"Be aware, your "},{"color":"red","italic":false,"text":"footsteps"},{"color":"gray","italic":false,"text":" are STILL"}]','[{"color":"red","italic":false,"text":"audible"},{"color":"gray","italic":false,"text":", and "},{"italic":false,"text":"visible"}]','{"text":" "}','[{"color":"dark_gray","italic":false,"text":"Return to a "},{"bold":true,"color":"dark_green","italic":false,"text":"HIDDEN"},{"italic":false,"text":" state by stop"}]','[{"color":"red","italic":false,"text":"jumping"},{"color":"dark_gray","italic":false,"text":" or"},{"italic":false,"text":" running"}]'],custom_data={status:3,group-status:1}] 1

# Continously Runs the Heartbeat.
execute as @s run function shriek:gamehandler/status/heartbeat

# Status Effects
effect give @s minecraft:night_vision 1 1 true
effect clear @s invisibility

# Excessive Motion Penalties
execute at @s run playsound minecraft:particle.soul_escape master @a ~ ~1 ~ 1 0.1 0
execute at @s run particle minecraft:soul ~ ~ ~ 0 0 0 0 1 normal