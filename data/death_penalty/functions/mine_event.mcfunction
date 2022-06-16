#イベント発生
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event/event_1
execute as @s at @s if score @s rng matches 30..39 run function death_penalty:event/event_4
execute as @s at @s if score @s rng matches 500..501 run function death_penalty:event/event_2
execute as @s at @s if score @s rng matches 998..999 run function death_penalty:event/event_3

#GOD
execute as @s at @s if score @s rng matches 777 run function death_penalty:god

scoreboard players reset @s mine
#scoreboard players add @s stone 1