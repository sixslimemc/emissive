#> emissive:_/light/passthrough/root
# % AS AT [passthrough root]
#--------------------
# 
#--------------------

execute if entity @n[type=marker,tag=_emissive.ptchecked,distance=..0.1] run return run kill @s
tag @s add _emissive.ptchecked

execute if function emissive:_/light/check_valid_block run function emissive:_/light/passthrough/valid
