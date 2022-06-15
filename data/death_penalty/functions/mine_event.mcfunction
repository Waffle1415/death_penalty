#イベント発生
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event_1
execute as @s at @s if score @s rng matches 994..998 run function death_penalty:event_2
execute as @s at @s if score @s rng matches 999 run function death_penalty:event_3

scoreboard players reset @s mine
scoreboard players add @s stone 1