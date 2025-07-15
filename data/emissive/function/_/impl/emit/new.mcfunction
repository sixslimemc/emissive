# IMPL > emissive:emit
# create_source
# % AS [emit source]
# % AT [emit location]
#--------------------
# ./main
#--------------------

tag @s add _emissive.source
tag @s add _emissive.light
scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s _emissive.emitting = *emit.level _emissive
scoreboard players set @s _emissive.keepalive 1

function emissive:_/impl/emit/try_emit