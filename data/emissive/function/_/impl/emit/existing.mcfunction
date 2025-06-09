# IMPL > emissive:emit
# existing
#--------------------
# ./main AS AT [emit source]
#--------------------

execute if score @s _emissive.emitting >= *emit.level _emissive unless score @s _emissive.id = *emit.id _emissive run return run scoreboard players set *emit.ignore _emissive 1

scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s _emissive.emitting = *emit.level _emissive




