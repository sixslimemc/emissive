#> emissive:_/light/passthrough/spawn_ptlight
# % AS AT [new light]
#--------------------
# ./valid
#--------------------

tag @s add _emissive.light
tag @s add _emissive.ptlight
tag @s add _emissive.tick
scoreboard players operation @s _emissive.id = *pt.id _emissive
scoreboard players operation @s _emissive.emitting = *pt.level _emissive