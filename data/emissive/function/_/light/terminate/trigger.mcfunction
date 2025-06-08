#> emissive:_/light/terminate/trigger
#--------------------
# ../main
#--------------------

execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ water[level=0]
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ air
kill @s