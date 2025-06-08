# IMPL > emissive:emit
# main

scoreboard players operation *x _emissive = @s emissive.level
scoreboard players set *y _emissive 0
execute align xyz if score @n[type=marker,]
