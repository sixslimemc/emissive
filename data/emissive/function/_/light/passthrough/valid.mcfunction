#> emissive:_/light/passthrough/valid
# % AS AT [passthrough root]
#--------------------
# 
#--------------------

function emissive:_/light/emit/trigger
execute if score @s _emissive.ptdepth matches ..0 run return 1


