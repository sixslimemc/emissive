#> emissive:_/source/main
#--------------------
# _/tick AS [emit source]
#--------------------

execute unless block ~ ~ ~ #emissive:_/valid_sources run return run function emissive:_/source/terminate/trigger

scoreboard players set *y _emissive 0
scoreboard players operation *x _emissive = @s _emissive.id
execute as @e[type=marker, distance=..0.1, tag=_emissive.proxy] at @s if score @s _emissive.id = *x _emissive run scoreboard players set *y _emissive 1
execute if score *y _emissive matches 1 run return 0

function emissive:_/source/terminate/trigger
