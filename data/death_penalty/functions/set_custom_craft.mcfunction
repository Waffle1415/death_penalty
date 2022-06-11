##
 # custom_craft.mcfunction
##

tag @s add set
playsound block.anvil.use master @a ~ ~ ~
execute as @s at @s run setblock ~ ~-1 ~ air replace
execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'"カスタムクラフター"'} replace