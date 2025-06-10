# IMPL > emissive:emit
# init/proxy
# % AS AT [emit proxy]
#--------------------
# ./do
#--------------------

tag @s add _emissive.proxy
scoreboard players operation @s _emissive.id = *emit.id _emissive
scoreboard players operation @s emissive.level = *emit.level _emissive