##
 # main.mcfunction
##

#死亡検知
execute as @a[scores={death=1..}] at @s run function death_penalty:player_death
execute as @a[tag=spectate,scores={sneak=1..}] at @s run spectate @a[gamemode=survival,sort=random,limit=1] @s

#ウォーデンを倒したらプレイヤー復活
execute as @a[scores={wardenkill=1..}] at @s run function death_penalty:player_super_revive

#カスタムクラフト
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:diamond_block",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:custom_craft

#カスタム祭壇
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"祭壇用の鏡","color":"gold"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:custom_alter