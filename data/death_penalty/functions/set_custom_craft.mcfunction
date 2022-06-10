##
 # custom_craft.mcfunction
##
particle minecraft:glow ~ ~ ~ 0 0.1 0 1 0
#particle minecraft:soul ~ ~0.8 ~ 0 0.1 0 0.03 1

execute as @s at @s if block ~ ~-1 ~ minecraft:dropper{} at @s run function death_penalty:custom_item/dirt

execute as @s at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:4b,id:"minecraft:rotten_flesh",Count:64b}]} at @s run function death_penalty:custom_item/rotten_flesh

execute as @s at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b},{Slot:1b,id:"minecraft:obsidian",Count:1b,},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:obsidian",Count:1b},{Slot:4b,id:"minecraft:copper_block",Count:1b},{Slot:5b,id:"minecraft:obsidian",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:obsidian",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}]} at @s run function death_penalty:custom_item/alter