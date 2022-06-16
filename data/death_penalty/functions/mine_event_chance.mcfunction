#確変中
#2%で大当たり
execute as @s at @s run function death_penalty:rng_get
execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event/event_3
#execute as @s at @s if score @s rng matches 996..997 run function death_penalty:event/event_2
#execute as @s at @s if score @s rng matches 998..999 run function death_penalty:event/event_3

#演出
title @s times 20 20 20
title @a title ["",{"text":"\u78ba","bold":true,"color":"dark_red"},{"text":"\u5909","bold":true,"color":"gold"},{"text":"\u4e2d","bold":true,"color":"green"},{"text":"\uff01","bold":true,"color":"dark_blue"},{"text":"\uff01","bold":true,"color":"light_purple"},{"text":"\uff01","bold":true,"color":"dark_green"}]

#スコア処理
scoreboard players reset @s mine
#scoreboard players add @s stone 1
scoreboard players remove @s chance 1

#chanceが0で確変終了
execute as @s[scores={chance=0}] at @s run function death_penalty:mine_event_chance_end