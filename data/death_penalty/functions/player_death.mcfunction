#死亡を検知後別ディメンションに飛ばす
summon armor_stand ~ ~ ~ {Invisible:true,Marker:1b,Tags:["spawn"]}
execute in death_penalty:heaven run tp @s ~ 64 ~
tag @s add death
scoreboard players add #counter deathcount 1
scoreboard players reset @s death
gamemode adventure @s

#労働用ピッケルを持たせる
give @s iron_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1

#死亡回数が一定数を上回ったら生き残りのランダムなプレイヤーの傍にウォーデンを召喚
#execute if score #counter deathcount > #limit deathcount if entity @a[gamemode=survival] as @a[limit=1,sort=random,gamemode=survival] at @s run function death_penalty:death_limit

#生き残りがいなくなったらランダムな誰かが復活して傍にウォーデンを召喚
#execute unless entity @a[gamemode=survival] run summon area_effect_cloud ~ ~ ~ {Tags:["final"]}
#execute as @e[type=area_effect_cloud,tag=final] at @s run function death_penalty:player_final2