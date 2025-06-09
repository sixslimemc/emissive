#> emissive:_/light/emit/setblock
#--------------------
# ./trigger
#--------------------
$execute unless block ~ ~ ~ minecraft:water[level=0] unless block ~ ~ ~ minecraft:light[waterlogged=true] run return run setblock ~ ~ ~ minecraft:light[level=$(level),waterlogged=false]
$setblock ~ ~ ~ minecraft:light[level=$(level),waterlogged=true]