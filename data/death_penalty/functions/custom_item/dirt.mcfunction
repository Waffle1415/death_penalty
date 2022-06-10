#エンチャントされた土
playsound block.anvil.land master @a ~ ~ ~
execute as @s at @s run setblock ~ ~-1 ~ air replace
execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"土","color":"light_purple"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}]} replace