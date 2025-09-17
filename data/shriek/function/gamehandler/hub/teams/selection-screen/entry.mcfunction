# Entry Sound
    playsound minecraft:entity.warden.nearby_closer master @s ~ ~ ~ 1 1 1
    playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
    effect give @s darkness infinite 0 true
    effect give @s blindness infinite 0 true
    effect give @s slowness infinite 3 true
    execute as @s run function shriek:gamehandler/hub/teams/selection-screen/menu
    title @s times 0t 10d 0t
    execute as @s run say Base-Screen_NOTIF
    tag @s[team=Red] add Red
    tag @s[team=Orange] add Orange
    tag @s[team=Yellow] add Yellow
    tag @s[team=Green] add Green
    tag @s[team=Blue] add Blue
    tag @s[team=Purple] add Purple
    tag @s[team=Spectators] add Spectators