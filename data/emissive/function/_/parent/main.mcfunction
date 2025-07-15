#> emissive:_/parent/main
#--------------------
# _/tick AS [emit parent]
#--------------------

execute store result storage emissive:_ x.id int 1 run scoreboard players get @s _emissive.id
function emissive:_/parent/keepalive with storage emissive:_ x