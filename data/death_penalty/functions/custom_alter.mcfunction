##
 # custom_craft.mcfunction
##
#particle minecraft:glow ~ ~ ~ 0 0.1 0 1 0
particle minecraft:soul ~ ~0.5 ~ 0 0.1 0 0.03 1

execute as @s at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:1b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:2b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:3b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:4b,id:"minecraft:rotten_flesh",Count:1b,tag:{display:{Name:'{"text":"腐った肉","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:5b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:6b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:7b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}},{Slot:8b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}]} at @s run function death_penalty:player_revive