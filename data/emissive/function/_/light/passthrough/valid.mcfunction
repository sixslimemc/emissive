#> emissive:_/light/passthrough/valid
# % AS AT [passthrough root]
#--------------------
# ./root
#--------------------

$kill @e[type=marker,distance=..0.1,tag=_emissive.ptlight,scores={_emissive.id=$(id)}]
$execute if entity @n[type=marker,distance=..0.1,tag=_emissive.source,scores={_emissive.id=$(id)}] run return 0
particle crit ~ ~ ~ 0 0 0 0 1
scoreboard players operation @s _emissive.emitting = *pt.level _emissive
tag @s add _emissive.ptvalid

execute summon marker run function emissive:_/light/passthrough/spawn_ptlight