execute at @a[tag=hiding] run data remove entity @n[type=minecraft:interaction,tag=hideSpot,limit=1,sort=nearest] interaction

# Hiding Spots Identifiers
execute as @a at @s if entity @e[type=interaction,tag=hideSpot,distance=..1.5] run title @s[tag=!hiding] actionbar ["",{"text":"ᴄʟɪᴄᴋ ᴛᴏ ","color":"gray"},{"text":"HIDE","color":"red","bold": true}]
execute as @a at @s if entity @e[type=interaction,tag=hideSpot,distance=..1.5] run execute at @e[tag=hideSpot,distance=..1.5] run particle glow ~ ~1 ~ 0.5 0.5 0.5 0 1 force @s[tag=!hiding]

# Hiding Time
scoreboard players add @a[nbt={RootVehicle:{Entity:{Tags:["hideRide"]}}},tag=hiding] hiding 1

# Excess Hiding Penatly
execute as @a[tag=hiding] run function shriek:gamehandler/maphandlers/hidenoise

# Hiding Function
execute at @a[tag=!hiding] as @n[type=interaction,tag=hideSpot] on target run function shriek:gamehandler/maphandlers/hiding

# Exiting Spot Functions
effect clear @a[nbt=!{RootVehicle:{Entity:{Tags:["hideRide"]}}},tag=hiding] slowness
tag @a[nbt=!{RootVehicle:{Entity:{Tags:["hideRide"]}}},tag=hiding] remove hiding

# Slabbings
execute as @a[tag=hiding] at @s if entity @e[type=interaction,tag=slab,tag=hideRide,distance=..2] run tag @s add slabbed
execute as @a[nbt=!{RootVehicle:{Entity:{Tags:["hideRide"]}}},tag=slabbed] at @s run tp @s @e[type=interaction,tag=outing,limit=1,sort=nearest]
tag @a[nbt=!{RootVehicle:{Entity:{Tags:["hideRide"]}}},tag=slabbed] remove slabbed