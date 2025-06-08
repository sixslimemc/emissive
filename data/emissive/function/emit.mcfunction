#> emissive : emit
# % AS AT [emit source]
#--------------------
# .
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

execute unless score @s emissive.level matches 0..15 run return 1
execute unless block ~ ~ ~ #emissive:_/valid_sources run return 1

function emissive:_/impl/emit/main

return 1