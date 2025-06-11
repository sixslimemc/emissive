#> emissive:_/light/emit/trigger
# % AS AT [emit light]
#--------------------
# _/source/emit/trigger
# _/light/passthrough/valid
#--------------------

# (assumes this block is already valid)

scoreboard players operation *x _emissive = @s _emissive.emitting
execute if score *x _emissive matches ..0 run return run function emissive:_/light/terminate/trigger

execute store result score @s _emissive.self run scoreboard players add *self _emissive 1
execute as @e[type=marker,distance=..0.1,tag=_emissive.light] if score @s _emissive.emitting >= *x _emissive unless score @s _emissive.self = *self _emissive run return 0

execute store result storage emissive:_ x.level int 1 run scoreboard players get *x _emissive

# split into 2 for macro cache efficiency
execute if score *x _emissive matches 9..15 run return run function emissive:_/light/emit/setblock.m1 with storage emissive:_ x
execute if score *x _emissive matches 1..8 run return run function emissive:_/light/emit/setblock.m2 with storage emissive:_ x