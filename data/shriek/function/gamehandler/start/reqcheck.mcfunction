# Checks for Atleast two players. For now just check if red and blue team is filled
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
# Start Confirm
execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run function shriek:gamehandler/start/start_anim
execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a {"text":" ꜱᴛᴀʀᴛɪɴɢ ɢᴀᴍᴇ . . .","color":"gray"}

execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a " "
execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a " "
execute unless score red teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Red ","color":"red"},{"text":"| ","color":"gray"},{"selector":"@a[team=Red]"}]
execute unless score orange teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Orange ","color":"gold"},{"text":"| ","color":"gray"},{"selector":"@a[team=Orange]"}]
execute unless score yellow teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Yellow ","color":"yellow"},{"text":"| ","color":"gray"},{"selector":"@a[team=Yellow]"}]
execute unless score green teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Green ","color":"green"},{"text":"| ","color":"gray"},{"selector":"@a[team=Green]"}]
execute unless score blue teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Blue ","color":"blue"},{"text":"| ","color":"gray"},{"selector":"@a[team=Blue]"}]
execute unless score purple teams matches 0 run execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Team Purple ","color":"light_purple"},{"text":"| ","color":"gray"},{"selector":"@a[team=Purple]"}]

execute if score total teams matches 2.. run execute if score map gameHandler matches 1.. run tellraw @a [{"text":"Spectators ","color":"gray"},{"text":"| ","color":"gray"},{"selector":"@a[team=Spectators]"}]

# Checks
execute if score total teams matches 0 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" Atleast two players are needed."}]
execute if score total teams matches 1 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" One more player is needed!"}]

# tellraw @a [{"text":"Team Blue ","color":"blue"},{"text":"| ","color":"gray"},{"selector":"@a[team=Blue]"}]

execute if score map gameHandler matches 0 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" Select a map first!"}]

execute at @a run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1 1 1

