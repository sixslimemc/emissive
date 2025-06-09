#> emissive:_/source/emit/trigger
# % AS AT [emit source]
#--------------------
# _/impl/emit/existing
#--------------------

execute store result score *x _emissive run function emissive:_/light/check_valid_block
execute if score *x _emissive matches 1 run function emissive:_/light/emit/trigger