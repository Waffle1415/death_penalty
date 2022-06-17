#初期設定
gamerule keepInventory false
gamerule doImmediateRespawn true
difficulty hard

#死亡検知
scoreboard objectives add death deathCount
scoreboard objectives add death_count dummy

#採掘検知
scoreboard objectives add mine minecraft.mined:stone

#ツルハシドロップ検知
scoreboard objectives add drop_iron dropped:iron_pickaxe
scoreboard objectives add drop_stone dropped:stone_pickaxe
scoreboard objectives add drop_wooden dropped:wooden_pickaxe

#確変
scoreboard objectives add luck dummy
scoreboard objectives add chance dummy

#乱数関連
scoreboard objectives add rng dummy
scoreboard players set #1000 rng 1000
scoreboard objectives add rng2 dummy
scoreboard players set #8192 rng2 8192