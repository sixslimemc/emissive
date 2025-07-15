#> emissive:_/source/terminate/trigger
#--------------------
# ../main
#--------------------

scoreboard players operation *x _emissive = @s _emissive.id
scoreboard players operation *terminate.nokillsave _emissive = *terminate.nokill _emissive
scoreboard players reset *terminate.nokill _emissive
execute as @e[type=marker,distance=..16,tag=_emissive.ptlight] at @s if score @s _emissive.id = *x _emissive run function emissive:_/light/terminate/trigger

scoreboard players operation *terminate.nokill _emissive = *terminate.nokillsave _emissive
scoreboard players reset *terminate.nokillsave
function emissive:_/light/terminate/trigger
