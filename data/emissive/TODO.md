
# shapes support
- support for do_shapes config option

# seperate optimized 'emit' function
- move current 'emit' function to something like 'force_emit'.
- make 'emit' be assumed to be called every tick, and only *actually* do emit logic at optimal times.