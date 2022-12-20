##プチイベント1

#演出
    title @s times 20 20 20
    title @s title [{"text":"！","bold":true,"color":"green"}]

#0.5%で確変突入
    execute as @s at @s run function death_penalty:rng_get
    execute as @s at @s if score @s rng matches 0..4 run scoreboard players reset @s luck
    execute as @s at @s if score @s rng matches 0..4 run tag @s remove luck
    execute as @s at @s if score @s rng matches 0..4 run function death_penalty:event/chance

#GODモード突入
    execute as @s at @s if score @s rng2 matches 777 run function death_penalty:god

#スコア処理
    scoreboard players reset @s mine
    scoreboard players remove @s[scores={luck=1..}] luck 1

#chanceが0でイベント終了
    execute as @s[scores={luck=0}] at @s run function death_penalty:mine_event_luck_end