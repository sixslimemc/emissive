#> emissive:_/source/main
#--------------------
# _/tick AS [emit source]
#--------------------

execute unless block ~ ~ ~ #emissive:_/valid_sources run return run function emissive:_/source/emit/trigger

tag @s add _emissive.checking
scoreboard players reset *keep _emissive
scoreboard players operation *x _emissive = @s _emissive.id
execute positioned ~0.5 ~0.5 ~0.5 as @e[scores={emissive.level=1..}, distance=0..1.5] at @s if score @s _emissive.id = *x _emissive align xyz if entity @n[type=marker,tag=_emissive.checking,distance=0..0.1] run scoreboard players set *keep _emissive 1
tag @s remove _emissive.checking

execute if score *keep _emissive matches 1 run return 0

function emissive:_/source/emit/trigger
