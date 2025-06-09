#> emissive:_/light/emit/trigger
# % AS AT [emit light]
#--------------------
# 
#--------------------

# (assumes this block is already valid)

execute if score @s _emissive.emitting matches ..0 run return run function emissive:_/light/terminate/trigger
execute store result storage emissive:_ x.level int 1 run scoreboard players get @s _emissive.emitting
function emissive:_/light/emit/setblock with storage emissive:_ x