##確変中の処理

#演出
    title @s times 20 20 20
    title @s title ["",{"text":"\u78ba","bold":true,"color":"dark_red"},{"text":"\u5909","bold":true,"color":"gold"},{"text":"\u4e2d","bold":true,"color":"green"},{"text":"\uff01","bold":true,"color":"dark_blue"},{"text":"\uff01","bold":true,"color":"light_purple"},{"text":"\uff01","bold":true,"color":"dark_green"}]

#2%で復活, 3%でダイヤ獲得, 20%で鉄の原石獲得
    execute as @s at @s run function death_penalty:rng_get
    execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event/revive
    execute as @s at @s if score @s rng matches 30..59 run function death_penalty:event/chance_event_1
    execute as @s at @s if score @s rng matches 100..299 run function death_penalty:event/chance_event_2

#GODモード突入
    execute as @s at @s if score @s rng2 matches 777 run function death_penalty:god

#効果音
    stopsound @s block minecraft:block.stone.break
    playsound minecraft:block.amethyst_block.break block @s

#スコア処理
    scoreboard players reset @s mine
    scoreboard players remove @s[scores={chance=1..}] chance 1

#chanceが0で確変終了
    execute as @s[scores={chance=0}] at @s run function death_penalty:mine_event_chance_end