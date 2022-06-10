#生存しているランダムなプレイヤーで実行
playsound entity.lightning_bolt.thunder master @s
effect give @s resistance 1 4 true
summon zombie ~ ~ ~ {PersistenceRequired:1b,Glowing:1b,DeathLootTable:"summon",CanBreakDoors:1b,Tags:["summon"],CustomName:'[{"text":"怒","color":"red","bold":true,"obfuscated":true},{"text":"怨霊","color":"red","bold":true,"obfuscated":false},{"text":"怒","color":"red","bold":true,"obfuscated":true}]',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:5s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"horror"}}],ArmorDropChances:[0.085F,0.085F,0.000F,100.000F]}
execute at @s run spectate @e[tag=summon,sort=nearest,limit=1] @a[tag=death,limit=1]
tag @a[tag=death] add spectate
tag @a[tag=death] remove death