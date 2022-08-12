#カウントダウン
scoreboard players remove @a[scores={countdown=1..}] countdown 1
tellraw @a[scores={countdown=60}] "天国まであと3.."
tellraw @a[scores={countdown=40}] "天国まであと2.."
tellraw @a[scores={countdown=20}] "天国まであと1.."

#死亡検知
execute as @a[scores={death=1..}] at @s run scoreboard players set @s countdown 80
execute as @a[scores={countdown=1..}] at @s run scoreboard players reset @s death
execute as @a[scores={countdown=0}] at @s run function death_penalty:player_death

#天国
execute if entity @a[tag=death] run function death_penalty:heaven