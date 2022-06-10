#全員の死亡回数が#limitを上回ったら生存者の傍にウォーデンが出現
playsound entity.lightning_bolt.thunder master @a
tellraw @a "皆さん死にすぎでは？"
tellraw @a "これは天からの試練です"
summon warden ~ ~ ~
tp @a[tag=death] ~ ~ ~
execute as @a[tag=death] at @s run spectate @e[type=warden,sort=nearest,limit=1] @s
tag @a[gamemode=spectator,tag=death] add spectate
tag @a[tag=death] remove death