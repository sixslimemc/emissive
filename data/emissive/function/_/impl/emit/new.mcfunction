# IMPL > emissive:emit
# create_source
# % AS AT [emit source]
#--------------------
# ./main
#--------------------

tag @s add _emissive.source
scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s _emissive.emitting = *emit.level _emissive

function emissive:_/source/emit/trigger