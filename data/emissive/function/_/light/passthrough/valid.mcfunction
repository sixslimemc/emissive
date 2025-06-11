#> emissive:_/light/passthrough/valid
# % AS AT [passthrough root]
#--------------------
# ./root
#--------------------

scoreboard players operation @s _emissive.emitting = *pt.level _emissive
function emissive:_/light/emit/trigger
tag @s add _emissive.ptvalid

execute as @e[type=marker,distance=..0.1,tag=_emissive.light] if score @s _emissive.id = *pt.id _emissive run return 1

execute summon marker run function emissive:_/light/passthrough/spawn_ptlight