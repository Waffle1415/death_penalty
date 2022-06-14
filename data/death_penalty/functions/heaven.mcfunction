#条件達成で帰還
execute as @a[tag=death,scores={stone=512..}] at @s run function death_penalty:player_revive

#石を掘ったときに確率でイベント発生
execute as @a[tag=death,scores={mine=1..}] run function death_penalty:mine_event
#execute if entity @a[tag=death,scores={mine=1..}] store result score #counter mine run scoreboard players get @a[tag=death,limit=1,scores={mine=1..}] mine


#天国なので死なないし、お腹も空かない
effect give @a[tag=death] resistance 60000 4 true
effect give @a[tag=death] saturation 60000 0 true