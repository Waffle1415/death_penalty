##
 # test.mcfunction
##

#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:glass_pane",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:dirt",Count:64b},{Slot:1b,id:"minecraft:dirt",Count:64b,},{Slot:2b,id:"minecraft:dirt",Count:64b},{Slot:3b,id:"minecraft:dirt",Count:64b},{Slot:4b,id:"minecraft:dirt",Count:64b},{Slot:5b,id:"minecraft:dirt",Count:64b},{Slot:6b,id:"minecraft:dirt",Count:64b},{Slot:7b,id:"minecraft:dirt",Count:64b},{Slot:8b,id:"minecraft:dirt",Count:64b}]} run function death_penalty:test2
execute as @s at @s run setblock ~ ~-1 ~ air replace

execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"エンチャントされた土","color":"white"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}]} replace

#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:dirt",Count:64b},{Slot:1b,id:"minecraft:dirt",Count:64b,},{Slot:2b,id:"minecraft:dirt",Count:64b},{Slot:3b,id:"minecraft:dirt",Count:64b},{Slot:4b,id:"minecraft:gold_block",Count:1b},{Slot:5b,id:"minecraft:dirt",Count:64b},{Slot:6b,id:"minecraft:dirt",Count:64b},{Slot:7b,id:"minecraft:dirt",Count:64b},{Slot:8b,id:"minecraft:dirt",Count:64b}]} at @s run function death_penalty:test2