# IMPL > emissive:emit
# existing
#--------------------
# ./main AS [emit source] AT [new emit location]
#--------------------

execute unless entity @s[distance=0..0.1] at @s run function emissive:_/impl/emit/clear_old

scoreboard players set *emit.existing_return _emissive 0
execute if score @s _emissive.emitting = *emit.level _emissive if entity @s[distance=0..0.1] run scoreboard players set *emit.existing_return _emissive 1

tp @s ~ ~ ~
scoreboard players operation @s _emissive.emitting = *emit.level _emissive

# tick
execute if score @s _emissive.ptrecheck matches 1.. run scoreboard players remove @s _emissive.ptrecheck 1
execute if score @s _emissive.ptrecheck matches ..0 run function emissive:_/impl/emit/ptrecheck/do

execute if score *emit.existing_return _emissive matches 1 run return 1

function emissive:_/impl/emit/try_emit

return 1