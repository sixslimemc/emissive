# IMPL > emissive:emit
# main

execute unless score @s emissive.level matches 0..15 run return 0
execute unless block ~ ~ ~ #emissive:_/valid_sources run return 0

scoreboard players operation *emit.level _emissive = @s emissive.level

execute as @s[tag=!_emissive.initialized] run function emissive:_/impl/emit/init/do

scoreboard players operation *emit.id _emissive = @s _emissive.id

# summon proxy
execute summon marker run function emissive:_/impl/emit/proxy

scoreboard players reset *emit.ignore _emissive
execute as @n[type=marker,tag=_emissive.source,distance=..0.1] run return run function emissive:_/impl/emit/existing

execute summon marker run function emissive:_/impl/emit/new