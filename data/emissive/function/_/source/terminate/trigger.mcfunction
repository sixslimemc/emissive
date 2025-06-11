#> emissive:_/source/terminate/trigger
#--------------------
# ../main
#--------------------

scoreboard players operation *x _emissive = @s _emissive.id
execute as @e[type=marker,distance=..16,tag=_emissive.ptlight] if score @s _emissive.id = *x _emissive run function emissive:_/light/terminate/trigger
function emissive:_/light/terminate/trigger