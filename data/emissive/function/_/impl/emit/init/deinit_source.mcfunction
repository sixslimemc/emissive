# IMPL > emissive:emit
# init/deinit_source
#--------------------
# ./deinit
#--------------------

$execute as @n[type=marker,tag=_emissive.source, scores={_emissive.id=$(id)}] at @s run function emissive:_/source/terminate/trigger