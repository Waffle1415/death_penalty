##チャンス中
#演出
title @s times 20 20 20
title @s title [{"text":"チャンス中！","bold":true,"color":"red"}]

#3%で確変突入
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..29 run scoreboard players reset @s luck
execute as @s at @s if score @s rng matches 0..29 run tag @s remove luck
execute as @s at @s if score @s rng matches 0..29 run function death_penalty:event/chance

#GOD
execute as @s at @s if score @s rng2 matches 777 run function death_penalty:god

#スコア処理
scoreboard players reset @s mine
scoreboard players remove @s[scores={luck=1..}] luck 1

#chanceが0で確変終了
execute as @s[scores={luck=0}] at @s run function death_penalty:mine_event_luck_end