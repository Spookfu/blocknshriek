execute if score activePlayers teams matches ..0 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" Atleast two players are needed."}]
execute if score activePlayers teams matches 1 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" Atleast one more player is needed!"}]
execute if score map gameHandler matches ..0 run tellraw @a ["",{"text":" CANNOT START GAME.","color":"red","bold":true},{"text":" Select a map first!"}]
execute as @a at @a run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
