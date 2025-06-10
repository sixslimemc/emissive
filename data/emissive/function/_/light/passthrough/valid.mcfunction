#> emissive:_/light/passthrough/valid
# % AS AT [passthrough root]
#--------------------
# ./root
#--------------------

function emissive:_/light/emit/trigger
tag @s add _emissive.ptvalid

execute as @e[type=marker,distance=..0.1,tag=_emissive.light] if score @s _emissive.id = *pt.id _emissive run return 1

execute summon marker run function emissive:_/light/passthrough/spawn_ptlight