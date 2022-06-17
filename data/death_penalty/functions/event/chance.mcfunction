#tellraw @s "確変突入！！"
tag @s add chance
scoreboard players set @s chance 30

title @s times 20 20 20
title @s title ["",{"text":"確","bold":true,"color":"dark_red"},{"text":"変","bold":true,"color":"gold"},{"text":"突","bold":true,"color":"green"},{"text":"入","bold":true,"color":"dark_blue"},{"text":"！","bold":true,"color":"light_purple"},{"text":"！","bold":true,"color":"dark_green"}]

playsound minecraft:music_disc.pigstep master @s