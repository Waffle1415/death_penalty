#死亡時に召喚されたモンスターを討伐出来たらプレイヤーを復活
execute as @a[tag=spectate] at @s run gamemode survival @a
execute as @a[tag=spectate] at @s run tag @a remove spectate

tellraw @a[scores={wardenkill=1..}] "ウォーデンを倒したので死んだプレイヤーは復活します"

#キル数をリセット
scoreboard players reset @a[scores={wardenkill=1..}] wardenkill