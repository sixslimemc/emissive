# IMPL > emissive:emit
# try_emit
# % AS [emit source]
# % AT [emit location]
#--------------------
# ./new
# ./existing
#--------------------

# return if there is a light brighter than us at this block
execute store result score @s _emissive.self run scoreboard players add *self _emissive 1
execute as @e[type=marker,tag=_emissive.source,distance=0..0.1] unless score @s _emissive.self = *self _emissive if score @s _emissive.emitting >= *emit.level _emissive run return 1

function emissive:_/source/emit/trigger