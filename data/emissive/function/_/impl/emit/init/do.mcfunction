# IMPL > emissive:emit
# init/do
#--------------------
# ../main
#--------------------

scoreboard players add *max_id _emissive 1
scoreboard players operation @s _emissive.id = *max_id _emissive

execute summon marker run function emissive:_/impl/emit/init/proxy