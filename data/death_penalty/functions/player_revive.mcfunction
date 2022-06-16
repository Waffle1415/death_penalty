#プレイヤーを復活
execute in overworld run tp @s ~ 256 ~
clear @s iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}
effect clear @s resistance
effect clear @s saturation
effect clear @s glowing
effect give @s slow_falling 40 0 true
scoreboard players reset @s mine
scoreboard players reset @s chance
tag @s remove death
tag @s remove revive
tag @s remove chance
gamemode survival @s
playsound minecraft:ui.toast.challenge_complete master @s
tellraw @s "元の世界に帰ってきた！"