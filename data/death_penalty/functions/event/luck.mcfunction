#tellraw @s "チャンス！"
tag @s add luck
scoreboard players add @s luck 10

title @s times 20 20 20
title @s title [{"text":"チャンス！","bold":true,"color":"green"}]

playsound block.anvil.place master @s