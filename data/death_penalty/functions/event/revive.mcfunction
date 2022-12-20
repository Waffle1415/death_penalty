#プレイヤーを現世に帰す
    title @s clear
    execute in overworld run tp @s ~ 256 ~
    execute as @s at @s run function death_penalty:player_revive