#乱数取得処理

#AEC召喚
    summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}

#AECのUUID取得
    execute store result score @s rng run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]
    execute store result score @s rng2 run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]

#マルチプレイヤー対策
    kill @e[tag=RNG,distance=..0.01,limit=1]

#確率設定
    scoreboard players operation @s rng %= #1000 rng
    scoreboard players operation @s rng2 %= #8192 rng2
