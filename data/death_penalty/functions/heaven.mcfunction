#石を掘ったときに確率でイベント発生
execute as @a[tag=death,tag=!chance,tag=!luck,scores={mine=1..}] run function death_penalty:mine_event
#確変中はイベントが変化
execute as @a[tag=death,tag=luck,scores={mine=1..}] run function death_penalty:mine_event_luck
execute as @a[tag=death,tag=chance,scores={mine=1..}] run function death_penalty:mine_event_chance

#ツルハシを捨てても手元に戻す
execute as @a[scores={drop_iron=1..}] at @s run function death_penalty:drop/iron
execute as @a[scores={drop_stone=1..}] at @s run function death_penalty:drop/stone
execute as @a[scores={drop_wooden=1..}] at @s run function death_penalty:drop/wooden

#天国なので死なないし、お腹も空かない
effect give @a[tag=death] resistance 60000 4 true
effect give @a[tag=death] saturation 60000 0 true
effect give @a[tag=chance] luck 60 0 false