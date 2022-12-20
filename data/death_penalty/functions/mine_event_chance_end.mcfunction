#確変終了
    title @s clear
    stopsound @s master music_disc.pigstep
    playsound minecraft:block.beacon.deactivate master @s
    tag @s remove chance
    effect clear @s luck
    effect give @s blindness 3 0 true