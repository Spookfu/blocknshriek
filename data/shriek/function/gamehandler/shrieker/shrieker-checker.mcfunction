# # Shrieker Inventory Preventors
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{shrieker:1}}}}]
clear @s[nbt=!{Inventory:[{count:1,Slot:4b, components:{"minecraft:custom_data":{shrieker:1}}}]},tag=Players] crossbow
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]

# Shrieker Cooldown Visual Updater
execute store result score @s shrieker-dura run scoreboard players operation BASE shrieker-dura -= @s shrieker-cd
item modify entity @s hotbar.4 shriek:durability-shrieker
execute unless score BASE shrieker-dura matches 120 run scoreboard players set BASE shrieker-dura 120

# # Sets a 1 or 0 if a player has a Loaded Crossbow or not
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:4b,components:{"minecraft:charged_projectiles":[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}}]}] shrieker-status 1
scoreboard players set @s[nbt=!{Inventory:[{id:"minecraft:crossbow",Slot:4b,components:{"minecraft:charged_projectiles":[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]}}]}] shrieker-status 0

# Runs the CD Functions
execute at @s[scores={shrieker-status=0},tag=!shrieked] run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1 1.2 1
execute at @s[scores={shrieker-status=0},tag=!shrieked] run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 1 1.2 1
execute at @s[scores={shrieker-status=0},tag=!shrieked] run summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:[ghost],Invulnerable:1b,active_effects:[{id:invisibility,duration:100000000,amplifier:1,show_particles:0b}]}

execute if entity @s[scores={shrieker-status=0},tag=!shrieked] run function shriek:gamehandler/shrieker/timing

# Ghost Function
kill @e[tag=ghost]

# # Visual HUD of Shrieker Cooldown Timer/Status
# execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run execute unless entity @s[scores={shrieker-reducer=1}] run title @s[scores={shrieker-baser=0}] actionbar ["ꜱʜʀɪᴇᴋᴇʀ ᴏɴ ", {"text":"Cooldown","color":"red","bold":true},{"text":" - ⏳ ","color":"gray"},{"score":{"name":"@s","objective":"shrieker-timer"}},{"text":"s"}]
# execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run title @s[scores={shrieker-baser=1}] actionbar ["ꜱʜʀɪᴇᴋᴇʀ ɪꜱ ɴᴏᴡ ",{"text":"ACTIVE","color":"green","bold":true}]

# # Temporary Standin, until Hit-checks are implemented. Sets the timer to 120s
# execute unless entity @s[scores={shrieker-on=1}] run execute as @s[scores={shrieker-baser=0}] run scoreboard players set @s shrieker-timer 120