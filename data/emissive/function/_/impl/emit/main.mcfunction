# IMPL > emissive:emit
# main

execute unless score @s emissive.level matches 0..15 run return 0
execute unless block ~ ~ ~ #emissive:_/valid_sources run return 0

execute unless score @s _emissive.id matches -2147483648..2147483647 run function emissive:_/impl/emit/assign_id

scoreboard players operation *emit.id _emissive = @s _emissive.id
scoreboard players operation *emit.level _emissive = @s emissive.level

scoreboard players reset *emit.ignore _emissive
execute align xyz as @n[type=marker,tag=_emissive.source,distance=0..0.1] run function emissive:_/impl/emit/existing
execute if score *emit.ignore _emissive matches 1 run return 0

execute align xyz summon marker run function emissive:_/impl/emit/new