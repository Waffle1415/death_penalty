##通常時に確率で発生するイベント

#乱数の取得
    execute as @s at @s run function death_penalty:rng_get

#イベント発生
    #敵出現
        execute as @s at @s if score @s rng matches 0..19 run function death_penalty:event/enemy1
        execute as @s at @s if score @s rng matches 30..39 run function death_penalty:event/enemy2
        
    #プチイベント
        execute as @s at @s if score @s rng matches 300..319 run function death_penalty:event/luck
        execute as @s at @s if score @s rng matches 400..409 run function death_penalty:event/luck2
    
    #確変突入
        execute as @s at @s if score @s rng matches 500..501 run function death_penalty:event/chance
    
    #プレイヤー復活
        execute as @s at @s if score @s rng matches 777 run function death_penalty:event/revive

    #GODモード突入
        execute as @s at @s if score @s rng2 matches 777 run function death_penalty:god

#スコアリセット
    scoreboard players reset @s mine