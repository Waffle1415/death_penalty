##天国にプレイヤーがいる場合常時実行される処理

#イベント発生(イベント中は他の処理)
    execute as @a[tag=death,tag=!chance,tag=!luck,tag=!luck2,scores={mine=1..}] run function death_penalty:mine_event

#確変中はイベントが変化
    execute as @a[tag=death,tag=luck,scores={mine=1..}] run function death_penalty:mine_event_luck
    execute as @a[tag=death,tag=luck2,scores={mine=1..}] run function death_penalty:mine_event_luck2
    execute as @a[tag=death,tag=chance,scores={mine=1..}] run function death_penalty:mine_event_chance

#ツルハシドロップ時は手元に戻す
    execute as @a[scores={drop_iron=1..}] at @s run function death_penalty:drop/iron
    execute as @a[scores={drop_stone=1..}] at @s run function death_penalty:drop/stone
    execute as @a[scores={drop_wooden=1..}] at @s run function death_penalty:drop/wooden

#ダメージ・空腹無効化処理
    effect give @a[tag=death] resistance 60000 4 true
    effect give @a[tag=death] saturation 60000 0 true
    effect give @a[tag=chance] luck 60 0 false