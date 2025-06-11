#> emissive:_/light/terminate/trigger
#--------------------
# ../main
#--------------------
execute if entity @n[type=marker,distance=..0.1,tag=_emissive.light] run return run kill @s
execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ water[level=0]
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ air
kill @s