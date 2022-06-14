#プレイヤーを復活
tag @s remove death
execute at @a[tag=!death,sort=random,limit=1] in overworld run tp @s ~ ~ ~
#execute in overworld run tp ~ ~ ~
clear @s iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}
effect clear @s resistance
effect give @s resistance 30 4 true
scoreboard players reset @s mine
gamemode survival @s
playsound minecraft:ui.toast.challenge_complete master @s