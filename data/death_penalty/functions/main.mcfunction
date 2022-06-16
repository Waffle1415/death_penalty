#死亡検知
    execute as @a[scores={death=1..}] at @s run function death_penalty:player_death

#天国
    execute if entity @a[tag=death] run function death_penalty:heaven
    
#ウォーデンを倒したらプレイヤー復活
#execute as @a[scores={wardenkill=1..}] at @s run function death_penalty:player_super_revive

#カスタムクラフト
#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},tag=!set] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:set_custom_craft

#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:diamond_block",Count:1b}},tag=set] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:custom_craft

#カスタム祭壇
#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"祭壇用の鏡","color":"gold"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}},tag=!set_alter] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:set_custom_alter
#execute as @e[type=item_frame,nbt={Item:{id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":"祭壇用の鏡","color":"gold"}'},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}},tag=set_alter] at @s if block ~ ~-1 ~ minecraft:dropper at @s run function death_penalty:custom_alter