#> emissive:_/light/ptmain
#--------------------
# _/marker_tick
#--------------------

execute if entity @s[tag=_emissive.ptinactive] run return run function emissive:_/light/terminate/trigger
tag @s add _emissive.ptinactive