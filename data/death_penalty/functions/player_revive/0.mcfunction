#生存しているランダムなプレイヤーで実行
playsound entity.lightning_bolt.thunder master @s
effect give @s resistance 1 4 true
summon warden ~ ~ ~
tp @a[tag=death] ~ ~ ~
execute as @a[tag=death] at @s run spectate @e[type=warden,sort=nearest,limit=1] @s
tag @a[tag=death] add spectate
tag @a[tag=death] remove death