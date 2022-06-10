##
 # reset.mcfunction
 # Created by waffle_1415.
##

#初期設定
gamerule keepInventory true
gamerule doImmediateRespawn true
difficulty hard

#死亡検知
scoreboard objectives add death deathCount
scoreboard objectives add deathcount dummy
scoreboard objectives add wardenkill killed:warden
scoreboard players set #limit deathcount 3

#スニーク検知
scoreboard objectives add sneak custom:sneak_time

#乱数関連
scoreboard objectives add rng dummy
scoreboard players set #100 rng 100