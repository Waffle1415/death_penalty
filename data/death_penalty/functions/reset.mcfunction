#初期設定
gamerule keepInventory false
gamerule doImmediateRespawn true
difficulty hard

#死亡検知
scoreboard objectives add death deathCount

#採掘検知
scoreboard objectives add mine minecraft.mined:stone

#確変
scoreboard objectives add chance dummy

#乱数関連
scoreboard objectives add rng dummy
scoreboard players set #1000 rng 1000
scoreboard objectives add rng2 dummy
scoreboard players set #8192 rng2 8192