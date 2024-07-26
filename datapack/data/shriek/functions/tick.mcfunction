# Set by the start button in the lobby, which starts the game.
execute as @a run execute if score timer gameHandler matches 5 run function shriek:gamehandler/start/start

# Keeps all the Handlers continously running as long as the game is active.
execute if score game gameHandler matches 1 run function shriek:gamehandler/baser

# Keeps trakc of the amount of people in Red and Blue team
execute store result score blue teams run team list Player1
execute store result score red teams run team list Player2