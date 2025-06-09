#> emissive:_/light/check_valid_block
# % AT [location]
#--------------------
# 
#--------------------

execute if block ~ ~ ~ minecraft:light run return 1
execute if block ~ ~ ~ #minecraft:air run return 1
execute if block ~ ~ ~ minecraft:water[level=0] run return 1
return 0