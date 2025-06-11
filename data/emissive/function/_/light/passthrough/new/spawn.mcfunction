#> emissive:_/light/passthrough/new/spawn
# AS AT [new root]
#--------------------
# ../root
# ./sides
# ./full
#--------------------

tag @s add _emissive.pt
tag @s add _emissive.ptroot
scoreboard players operation @s _emissive.id = *pt.id _emissive
# scoreboard players operation @s _emissive.ptdepth = *pt.newdepth _emissive
