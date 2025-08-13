# Keeps all the Handlers continously running as long as the game is active.
    execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# Hub Stuff
    execute if block -14 -60 54 minecraft:oak_button[powered=true] run function shriek:gamehandler/start/reqcheck

# Team Selection Screen
    execute as @a[x=-14,y=-59,z=66,distance=..1] run function shriek:gamehandler/hub/teams/selection-screen/team_selection
    execute as @a[x=-14,y=-59,z=66,distance=1..,tag=selecting_team] run function shriek:gamehandler/hub/teams/selection-screen/team_selection-exit


#Triggers
    execute as @a[scores={shriek.end=1..}] run function shriek:triggers/helper.end
    scoreboard players enable @a shriek.end

    execute as @a[scores={shriek.start=1..}] run function shriek:triggers/helper.start
    scoreboard players enable @a shriek.start

    execute as @a[scores={shriek.addloot=1..}] run function shriek:triggers/addloot
    scoreboard players enable @a shriek.addloot