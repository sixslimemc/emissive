#> emissive:_/light/passthrough/kill_old
# AS AT [emit source]
#--------------------
# ./trigger
#--------------------

$execute as @e[type=marker,distance=..16,tag=_emissive.ptlight,scores={_emissive.id=$(id)}] at @s run function emissive:_/light/terminate/trigger