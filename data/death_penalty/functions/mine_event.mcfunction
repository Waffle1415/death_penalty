#イベント発生
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event_1
execute as @s at @s if score @s rng matches 995..999 run function death_penalty:event_2

scoreboard players reset @s mine
scoreboard players add @s stone 1