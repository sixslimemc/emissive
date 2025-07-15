#> emissive:_/parent/main
#--------------------
# _/tick AS [emit parent]
#--------------------

scoreboard players operation *x _emissive = @s _emissive.id
execute as @e[type=marker,tag=_emissive.light] if score @s _emissive.id = *x _emissive run scoreboard players set @s _emissive.keepalive 1