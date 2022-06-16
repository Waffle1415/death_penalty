##
 # reset.mcfunction
 # Created by waffle_1415.
##

#初期設定
gamerule keepInventory false
gamerule doImmediateRespawn true
difficulty hard

#死亡検知
scoreboard objectives add death deathCount
scoreboard objectives add deathcount dummy
#scoreboard objectives add wardenkill killed:warden
scoreboard players set #limit deathcount 3

#スニーク検知
#scoreboard objectives add sneak custom:sneak_time

#採掘数管理
scoreboard objectives add mine minecraft.mined:stone
#scoreboard objectives add stone dummy

#確変
scoreboard objectives add chance dummy

#乱数関連
scoreboard objectives add rng dummy
scoreboard players set #1000 rng 1000