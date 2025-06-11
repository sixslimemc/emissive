#> emissive:_/light/terminate/trigger
#--------------------
# ../main
#--------------------

scoreboard players set *x _emissive 0

execute store result score @s _emissive.self run scoreboard players add *self _emissive 1
execute as @e[type=marker,distance=..0.1,tag=_emissive.light] unless score @s _emissive.self = *self _emissive run scoreboard players set *x _emissive 1

execute if score *x _emissive matches 1 run return run kill @s

execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ water[level=0]
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ air
particle flame ~ ~ ~ 0 0 0 0 1
kill @s