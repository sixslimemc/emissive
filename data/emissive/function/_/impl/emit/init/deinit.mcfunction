# IMPL > emissive:emit
# init/deinit
#--------------------
# ../main
#--------------------

tag @s remove _emissive.initialized
tag @s remove _emissive.parent

execute store result storage emissive:_ x.id int 1 run scoreboard players get @s _emissive.id
function emissive:_/impl/emit/init/deinit_source with storage emissive:_ x