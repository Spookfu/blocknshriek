# Shrieker Inventory Preventors
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{shrieker:1}}}}]
clear @s[nbt=!{Inventory:[{count:1,Slot:4b, components:{"minecraft:custom_data":{shrieker:1}}}]},tag=Players] crossbow

# Sets a 1 or 0 if a player has a Loaded Crossbow or not
execute if items entity @s hotbar.4 minecraft:crossbow[charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]] run scoreboard players set @s shrieker-baser 1
execute if items entity @s hotbar.4 minecraft:crossbow[!charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]] run scoreboard players set @s shrieker-baser 0

# Gives a Loaded Crossbow with players who has a score of 1 for "shrieker-baser"
function shriek:gamehandler/shrieker/loaded

# Stores the result into the players score for the difference between BASE (120) and the Shrieker Cooldown Timer
# Modify the Shrieker Item with the appropriate Visual Durability to represent the cooldown. (see durability-shrieker.json under item_modifiers folder)
# Sets the BASE score of "shrieker-dura" back to 120.
execute store result score @s shrieker-dura run scoreboard players operation BASE shrieker-dura -= @s shrieker-timer
item modify entity @s hotbar.4 shriek:durability-shrieker
execute unless score BASE shrieker-dura matches 120 run scoreboard players set BASE shrieker-dura 120

# Gives an Unloaded, durability of 0 crossbow, to players who has a score of 0 for "shrieker-base", IF there is no crossbow in that slot.
execute unless items entity @s hotbar.4 crossbow run function shriek:gamehandler/shrieker/unloaded

# Visual HUD of Shrieker Cooldown Timer/Status
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run execute unless entity @s[scores={shrieker-reducer=1}] run title @s[scores={shrieker-baser=0}] actionbar ["ꜱʜʀɪᴇᴋᴇʀ ᴏɴ ", {"text":"Cooldown","color":"red","bold":true},{"text":" - ⏳ ","color":"gray"},{"score":{"name":"@s","objective":"shrieker-timer"}},{"text":"s"}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run title @s[scores={shrieker-baser=1}] actionbar ["ꜱʜʀɪᴇᴋᴇʀ ɪꜱ ɴᴏᴡ ",{"text":"ACTIVE","color":"green","bold":true}]

# Temporary Standin, until Hit-checks are implemented. Sets the timer to 120s
execute unless entity @s[scores={shrieker-on=1}] run execute as @s[scores={shrieker-baser=0}] run scoreboard players set @s shrieker-timer 120

# Gives an Unloaded, durability of 0 crossbow, to players who has a score of 0 for "shrieker-base".
execute unless entity @s[scores={shrieker-on=1}] run function shriek:gamehandler/shrieker/unloaded

# Audio Feedback of Shrieker Usage, and runs the cooldown function of the Shrieker.
execute unless entity @s[scores={shrieker-on=1}] run execute as @s[scores={shrieker-baser=0}] run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 1.2 1
execute unless entity @s[scores={shrieker-on=1}] run execute as @s[scores={shrieker-baser=0}] run function shriek:gamehandler/shrieker/timing