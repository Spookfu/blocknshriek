# Text Buffer
function shriek:gamehandler/shared/text-buffer

# Requirement Fail
# execute run return run execute if score map gameHandler matches ..0 run return run function shriek:gamehandler/start/reqfail
# execute run return run execute if score activePlayers teams matches ..1 run return run function shriek:gamehandler/start/reqfail

# Requirement Pass
function shriek:gamehandler/start/startanim

tellraw @a {"text":" ꜱᴛᴀʀᴛɪɴɢ ɢᴀᴍᴇ . . .","color":"gray"}
tellraw @a " "
tellraw @a " "
execute unless score red teams matches 0 run tellraw @a [{"text":"Team Red ","color":"red"},{"text":"| ","color":"gray"},{"selector":"@a[team=Red]"}]
execute unless score orange teams matches 0 run tellraw @a [{"text":"Team Orange ","color":"gold"},{"text":"| ","color":"gray"},{"selector":"@a[team=Orange]"}]
execute unless score yellow teams matches 0 run tellraw @a [{"text":"Team Yellow ","color":"yellow"},{"text":"| ","color":"gray"},{"selector":"@a[team=Yellow]"}]
execute unless score green teams matches 0 run tellraw @a [{"text":"Team Green ","color":"green"},{"text":"| ","color":"gray"},{"selector":"@a[team=Green]"}]
execute unless score blue teams matches 0 run tellraw @a [{"text":"Team Blue ","color":"blue"},{"text":"| ","color":"gray"},{"selector":"@a[team=Blue]"}]
execute unless score purple teams matches 0 run tellraw @a [{"text":"Team Purple ","color":"light_purple"},{"text":"| ","color":"gray"},{"selector":"@a[team=Purple]"}]

tellraw @a [{"text":"Spectators ","color":"gray"},{"text":"| ","color":"gray"},{"selector":"@a[team=Spectators]"}]

