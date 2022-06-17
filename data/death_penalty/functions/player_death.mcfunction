#死亡を検知後別ディメンションに飛ばす
execute in death_penalty:heaven run tp @s ~ 64 ~
tag @s add death
scoreboard players add @s death_count 1
scoreboard players reset @s death
scoreboard players reset @s mine
gamemode adventure @s

#メッセージ
tellraw @s "あなたは死んでしまいました"
tellraw @s "元の世界に戻るためには石を掘らなければなりません"

#死亡回数に応じて追加メッセージ
tellraw @s[scores={death_count=..3}] "そのツルハシで頑張りましょう"
tellraw @s[scores={death_count=4..5}] "...少し死にすぎでは？"
tellraw @s[scores={death_count=4..5}] "ツルハシのグレードを下げておきます"
tellraw @s[scores={death_count=6..}] "死にすぎです"
tellraw @s[scores={death_count=6..}] "ツルハシのグレードをさらに下げておきます"

#労働用ツルハシを持たせる
give @s[scores={death_count=..3}] iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1
give @s[scores={death_count=4..5}] stone_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1
give @s[scores={death_count=6..}] wooden_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1