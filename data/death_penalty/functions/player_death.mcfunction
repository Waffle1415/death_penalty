#死亡を検知後スペクテイターに
gamemode spectator @s
tag @s add death
scoreboard players add #counter deathcount 1
scoreboard players reset @s death

#死亡回数が一定数を上回ったら生き残りのランダムなプレイヤーの傍にウォーデンを召喚
execute if score #counter deathcount > #limit deathcount if entity @a[gamemode=survival] as @a[limit=1,sort=random,gamemode=survival] at @s run function death_penalty:death_limit

#生き残りがいなくなったらランダムな誰かが復活して傍にウォーデンを召喚
execute unless entity @a[gamemode=survival] run summon area_effect_cloud ~ ~ ~ {Tags:["final"]}
execute as @e[type=area_effect_cloud,tag=final] at @s run function death_penalty:player_final2