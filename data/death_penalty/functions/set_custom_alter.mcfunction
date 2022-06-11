##
 # custom_craft.mcfunction
##

tag @s add set_alter
playsound block.enchantment_table.use master @a ~ ~ ~
execute as @s at @s run setblock ~ ~-1 ~ air replace
execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'"祭壇"'} replace