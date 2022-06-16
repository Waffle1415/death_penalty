#条件達成で帰還
#execute as @a[tag=death,tag=revive] at @s run function death_penalty:player_revive

#石を掘ったときに確率でイベント発生
execute as @a[tag=death,tag=!chance,scores={mine=1..}] run function death_penalty:mine_event
execute as @a[tag=death,tag=chance,scores={mine=1..}] run function death_penalty:mine_event_chance

#天国なので死なないし、お腹も空かない
effect give @a[tag=death] resistance 60000 4 true
effect give @a[tag=death] saturation 60000 0 true
effect give @a[tag=chance] glowing 30 0 false