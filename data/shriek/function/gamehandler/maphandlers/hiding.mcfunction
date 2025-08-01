execute as @n[type=interaction,tag=hideSpot] run data remove entity @s interaction
scoreboard players set @s hiding 0
tp @s @n[type=interaction,tag=hideRide,limit=1,sort=nearest]
ride @s mount @n[type=interaction,tag=hideRide,limit=1,sort=nearest]
tag @s add hiding
item replace entity @s[team=Blue] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_blue"}]
item replace entity @s[team=Red] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_red"}]
item replace entity @s[team=Yellow] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_yellow"}]
item replace entity @s[team=Green] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_green"}]
item replace entity @s[team=Purple] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_purple"}]
item replace entity @s[team=Orange] armor.head with minecraft:acacia_button[equippable={slot:head,camera_overlay:"overlays/hiding_orange"}]

execute at @s run playsound entity.horse.saddle master @a ~ ~ ~ 1 1 1
effect give @s slowness infinite 3 true
