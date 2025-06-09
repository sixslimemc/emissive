# IMPL > emissive:emit
# existing
#--------------------
# ./main AS AT [emit source]
#--------------------

execute if score @s _emissive.emitting >= *emit.level _emissive unless score @s _emissive.id = *emit.id _emissive run return 0

scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s _emissive.emitting = *emit.level _emissive

function emissive:_/source/emit/trigger