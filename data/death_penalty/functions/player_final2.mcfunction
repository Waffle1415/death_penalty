#生存者0人でアイテム没収
playsound block.bell.use master @a
tellraw @a "生存者がいません"
tellraw @a "持っていたアイテムが没収されました"
clear @a
gamemode survival @a[sort=random,limit=1]
tp @a[tag=death] ~ ~ ~
execute as @a[tag=death] at @s run spectate @a[gamemode=survival,sort=nearest,limit=1] @s
tag @a[gamemode=spectator,tag=death] add spectate
tag @a[tag=death] remove death