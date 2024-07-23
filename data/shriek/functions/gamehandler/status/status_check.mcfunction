tag @a[tag=Players,predicate=shriek:sprint] add sprinting
tag @a[tag=Players,predicate=shriek:sneak] add sneaking
tag @a[tag=Players,predicate=!shriek:sprint] remove sprinting
tag @a[tag=Players,predicate=!shriek:sneak] remove sneaking

execute as @a store result score @s jump_dis run data get entity @s FallDistance 100

execute as @a[tag=Players,scores={jump_dis=99..}] run function shriek:gamehandler/status/jumping
execute as @a[tag=Players,scores={jump_dis=..99}] run tag @s remove jumping
tag @a[tag=Players,nbt={OnGround:1b}] remove jumped

# Status
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{group-status:1}}}}]
clear @a[tag=Players,nbt=!{Inventory:[{count:1,Slot:8b, components:{"minecraft:custom_data":{group-status:1}}}]},tag=Players] #shriek:status

execute as @a[tag=Players,tag=!sprinting,tag=!jumping] run function shriek:gamehandler/status/green

execute as @a[tag=Players,tag=sprinting,tag=!sneaking] run function shriek:gamehandler/status/red

execute as @a[tag=Players,tag=jumping,tag=!sneaking,tag=!sprinting] run function shriek:gamehandler/status/yellow

execute as @a[tag=Players,tag=sprinting,tag=sneaking] run function shriek:gamehandler/status/yellow
execute as @a[tag=Players,tag=jumping,tag=sneaking, tag=!sprinting] run function shriek:gamehandler/status/green