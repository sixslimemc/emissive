# IMPL > emissive:emit
# main

scoreboard players operation *emit.id _emissive = @s _emissive.id
scoreboard players operation *emit.level _emissive = @s emissive.level

scoreboard players reset *emit.ignore _emissive
execute align xyz as @n[type=marker,tag=_emissive.source,distance=0..0.1] run function emissive:_/impl/emit/existing
execute if score *emit.ignore _emissive matches 1 run return 0
