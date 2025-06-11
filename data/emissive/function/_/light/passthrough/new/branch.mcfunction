#> emissive:_/light/passthrough/new/branch
#--------------------
# ../root
#--------------------

execute if block ~ ~ ~ #emissive:full_transparency run return run function emissive:_/light/passthrough/new/full
execute if block ~ ~ ~ #emissive:open_sides run function emissive:_/light/passthrough/new/sides
execute if block ~ ~ ~ #emissive:open_top positioned ~ ~1 ~ summon marker run function emissive:_/light/passthrough/new/spawn
execute if block ~ ~ ~ #emissive:open_bottom positioned ~ ~-1 ~ summon marker run function emissive:_/light/passthrough/new/spawn