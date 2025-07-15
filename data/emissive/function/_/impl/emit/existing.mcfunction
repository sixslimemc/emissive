# IMPL > emissive:emit
# existing
#--------------------
# ./main AS [emit source] AT [new emit location]
#--------------------

scoreboard players set *x _emissive 0
execute if score @s _emissive.emitting = *emit.level _emissive if entity @s[distance=0..0.1] run scoreboard players set *x _emissive 1

tp @s ~ ~ ~
scoreboard players operation @s _emissive.emitting = *emit.level _emissive
execute if score *x _emissive matches 1 run return 1

function emissive:_/impl/emit/try_emit

return 1