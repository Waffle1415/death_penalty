##ツルハシドロップ時の処理

    #wooden
    kill @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]}}}]
    give @s wooden_pickaxe{display:{Name:'{"text":"作業用ツルハシ","color":"dark_purple","italic":false}',Lore:['{"text":"これで石をたくさん掘れば","color":"white","italic":false}','{"text":"元の世界に帰れるはず...","color":"white","italic":false}']},HideFlags:13,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],CanDestroy:["minecraft:stone"]} 1
    scoreboard players reset @s drop_wooden