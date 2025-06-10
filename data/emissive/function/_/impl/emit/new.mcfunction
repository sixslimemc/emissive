# IMPL > emissive:emit
# create_source
# % AS [emit source]
# % AT [emit location]
#--------------------
# ./main
#--------------------

tag @s add _emissive.source
tag @s add _emissive.persistent
tag @s add _emissive.light
scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s _emissive.emitting = *emit.level _emissive

function emissive:_/source/emit/trigger