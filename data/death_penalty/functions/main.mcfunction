##常時実行

#死亡検知
    execute as @a[scores={death=1..}] at @s run gamemode spectator
    execute as @a[gamemode=spectator] at @s run function death_penalty:player_death

#天国
    execute if entity @a[tag=death] run function death_penalty:heaven