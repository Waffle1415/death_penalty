#プレイヤーを復活
execute as @s at @s run setblock ~ ~-1 ~ air replace
execute as @s at @s run setblock ~ ~-1 ~ dropper[facing=up] replace
tp @a[tag=spectate] ~ ~ ~
gamemode survival @a[tag=spectate]
tag @a[tag=spectate] remove spectate
playsound minecraft:ui.toast.challenge_complete master @a
tellraw @a "死んでいたプレイヤー達が復活した！"