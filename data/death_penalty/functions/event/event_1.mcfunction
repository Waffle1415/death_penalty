tellraw @s "なんと！石の中から敵が出てきた！！"
#execute as @s at @s run function death_penalty:rng_get
summon skeleton ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"death",CustomName:'{"text":"亡霊クラフター","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}]}},{}],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.000F,0.000F]}
