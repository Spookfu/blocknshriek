# Keeps all the Handlers continously running as long as the game is active.
    execute if score game gameHandler matches 1 run function shriek:gamehandler/baser
    # say h
# Hub Stuff
    execute if block -14 -60 54 minecraft:oak_button[powered=true] run function shriek:gamehandler/start/reqcheck

# Map Selection Screen
execute as @a[x=-19.5,y=-59.5,z=40.5,distance=..4] run function shriek:gamehandler/hub/maps/map1
execute as @a[x=-13.5,y=-59.5,z=40.5,distance=..4] run function shriek:gamehandler/hub/maps/map2
execute as @a[x=-7.5,y=-59.5,z=40.5,distance=..4] run function shriek:gamehandler/hub/maps/map3

particle minecraft:end_rod -19.50 -60.00 43.50 0.2 1 0.2 0 1 normal
particle minecraft:end_rod -13.50 -60.00 43.50 0.2 1 0.2 0 1 normal
particle minecraft:end_rod -7.50 -60.00 43.50 0.2 1 0.2 0 1 normal

#Triggers
    execute as @a[scores={shriek.end=1..}] run function shriek:triggers/helper.end
    scoreboard players enable @a shriek.end

    execute as @a[scores={shriek.start=1..}] run function shriek:triggers/helper.start
    scoreboard players enable @a shriek.start

    execute as @a[scores={shriek.addloot=1..}] run function shriek:triggers/addloot
    scoreboard players enable @a shriek.addloot
