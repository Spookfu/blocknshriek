# Replaces the Status Item in a players hotbar with a "NOTICED" Status, if the player is jumping, or sneak-sprinting.
item replace entity @s hotbar.8 with yellow_concrete[item_name='[{"text":"ʏᴏᴜ ᴀʀᴇ"},{"bold":true,"color":"gold","text":" NOTICEABLE ⏹⏹□"}]',lore=['[{"color":"gray","italic":false,"text":"Your"},{"color":"red","italic":false,"text":" foes "},{"italic":false,"text":"can see you through"}]','[{"color":"gray","italic":false,"text":"normal means. You are "},{"color":"dark_purple","italic":false,"text":"more vunerable"}]','{"color":"dark_purple","italic":false,"text":"to spells"}','{"text":" "}','[{"color":"red","italic":false,"text":"- "},{"color":"red","italic":false,"text":"Visually visible"},{"color":"gray","italic":false,"text":" to others"}]','[{"color":"green","italic":false,"text":"+ "},{"color":"gray","italic":false,"text":"No "},{"color":"red","italic":false,"text":"visual"},{"color":"gray","italic":false,"text":"/"},{"color":"red","italic":false,"text":"audible "},{"color":"gray","italic":false,"text":"excess","underlined":true}]','{"color":"gray","italic":false,"text":"motion penalties"}','[{"color":"gold","italic":false,"text":"* "},{"color":"gray","italic":false,"text":"Be aware, your "},{"color":"red","italic":false,"text":"footsteps"},{"color":"gray","italic":false,"text":" are STILL"}]','[{"color":"red","italic":false,"text":"audible"},{"color":"gray","italic":false,"text":", and "},{"italic":false,"text":"visible"}]','{"text":" "}','[{"color":"dark_gray","italic":false,"text":"Return to a "},{"bold":true,"color":"dark_green","italic":false,"text":"HIDDEN"},{"italic":false,"text":" state by stop"}]','[{"color":"red","italic":false,"text":"jumping"},{"color":"dark_gray","italic":false,"text":" or"},{"italic":false,"text":" running"}]'],custom_data={status:2,group-status:1}] 1

# Continously Runs the Heartbeat.
execute as @s run function shriek:gamehandler/status/heartbeat

# Status Effects
effect clear @s invisibility
effect clear @s night_vision