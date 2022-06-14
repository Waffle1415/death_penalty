scoreboard players reset @s mine
scoreboard players add @s stone 1

#イベント発生
execute as @s at @s run function death_penalty:rng_get
#execute if score @s rng matches 5 run function 