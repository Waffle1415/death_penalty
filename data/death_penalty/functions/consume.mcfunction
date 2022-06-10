# 50%50%で違うコマンド実行
function death_penalty:rng_get
execute if score @s rng matches 0..49 run function rng:pattern/1
execute if score @s rng matches 50..99 run function rng:pattern/2

# リセット
advancement revoke @p only rng:consume_apple