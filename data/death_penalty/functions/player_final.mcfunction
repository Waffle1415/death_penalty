#生存者0人でウォーデン召喚
playsound entity.lightning_bolt.thunder master @a
tellraw @a "生存者がいません"
tellraw @a "あなたたちには罰が必要なようですね"
gamemode survival @a[sort=random,limit=1]
summon warden ~ ~ ~
tp @a[tag=death] ~ ~ ~
execute as @a[tag=death] at @s run spectate @e[type=warden,sort=nearest,limit=1] @s
tag @a[gamemode=spectator,tag=death] add spectate
tag @a[tag=death] remove death