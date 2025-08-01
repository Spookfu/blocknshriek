execute at @a[scores={shriek.addloot=1}] run summon minecraft:marker ~ ~ ~ {data:{name:"Loot Pot Spawn"},Tags:["loot_pot","loot"]}
execute at @a[scores={shriek.addloot=2}] run summon minecraft:marker ~ ~ ~ {data:{name:"Loot Chest Spawn"},Tags:["loot_chest","loot"]}
execute at @a[scores={shriek.addloot=3}] run summon minecraft:marker ~ ~ ~ {data:{name:"Loot Barrel Spawn"},Tags:["loot_barrel","loot"]}
execute at @a[scores={shriek.addloot=4}] run summon minecraft:marker ~ ~ ~ {data:{name:"Loot Item Spawn"},Tags:["loot_item","loot"]}

scoreboard players reset @a[scores={shriek.addloot=1..}] shriek.addloot