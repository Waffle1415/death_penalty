#プレイヤーを復活
stopsound @s master music_disc.pigstep
execute in overworld run playsound minecraft:ui.toast.challenge_complete master @s
clear @s iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}
clear @s stone_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}
clear @s wooden_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}
effect clear
effect give @s slow_falling 40 0 true
scoreboard players reset @s mine
scoreboard players reset @s chance
tag @s remove death
tag @s remove chance
gamemode survival @s
title @a times 20 60 20
title @a title {"text":"大当たり！！","bold":true,"color":"yellow"}
tellraw @s "元の世界に帰ってきた！"