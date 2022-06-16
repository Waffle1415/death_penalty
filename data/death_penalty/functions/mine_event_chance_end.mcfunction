#確変終了
title @s clear
tellraw @s "確変が終わった"
tag @s remove chance
effect clear @s glowing
effect give @s blindness 3 0 true