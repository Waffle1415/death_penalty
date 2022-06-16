#死亡を検知後別ディメンションに飛ばす
execute in death_penalty:heaven run tp @s ~ 64 ~
tag @s add death
scoreboard players reset @s death
scoreboard players reset @s mine
gamemode adventure @s

#メッセージ
tellraw @s "あなたは死んでしまいました"
tellraw @s "元の世界に戻るためには石を掘らなければなりません"
tellraw @s "そのピッケルで頑張りましょう"

#労働用ピッケルを持たせる
give @s iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1