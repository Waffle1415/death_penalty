title @s clear
tellraw @s "大当たり！現世へ帰してあげましょう"
execute in overworld run tp @s ~ 256 ~
execute as @s at @s run function death_penalty:player_revive