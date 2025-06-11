#> emissive:_/light/ptmain
#--------------------
# _/tick
#--------------------

execute if entity @s[tag=_emissive.ptinactive] run return run function emissive:_/light/terminate/trigger
tag @s add _emissive.ptinactive