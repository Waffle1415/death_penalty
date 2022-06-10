#祭壇用の鏡
playsound block.anvil.land master @a ~ ~ ~
execute as @s at @s run setblock ~ ~-1 ~ air replace
execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up]{Items:[{Slot:4b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"祭壇用の鏡","color":"gold"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}]} replace