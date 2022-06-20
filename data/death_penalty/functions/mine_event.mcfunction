#イベント発生
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event/enemy1
execute as @s at @s if score @s rng matches 30..39 run function death_penalty:event/enemy2
execute as @s at @s if score @s rng matches 300..319 run function death_penalty:event/luck
execute as @s at @s if score @s rng matches 400..409 run function death_penalty:event/luck2
execute as @s at @s if score @s rng matches 500..503 run function death_penalty:event/chance
execute as @s at @s if score @s rng matches 999 run function death_penalty:event/revive

#GOD
execute as @s at @s if score @s rng2 matches 777 run function death_penalty:god

scoreboard players reset @s mine