execute if score @a[limit=1] shriek.start matches 1 run scoreboard players set map gameHandler 1
execute if score @a[limit=1] shriek.start matches 2 run scoreboard players set map gameHandler 2
execute if score @a[limit=1] shriek.start matches 3 run scoreboard players set map gameHandler 3

function shriek:gamehandler/start/mapping
function shriek:gamehandler/start/reqcheck

scoreboard players reset @a[scores={shriek.start=1..}] shriek.start