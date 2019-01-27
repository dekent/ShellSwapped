var angle = 180
var spread = 0
for (var i = 0; i < array_length_1d(global.inventory); i++)
{
    spread += global.inventory[i]
}
var angle_incr = 0
if (spread > 0)
{
    angle_incr = 360.0/spread
}
var sprite_count = 0
var offset = 0
for (var i = 0; i < array_length_1d(global.inventory); i++)
{
    for (var j = 0; j < global.inventory[i]; j++)
    {
        ds_list_add(global.inv_sprites, instance_create(floor(x - image_xscale*24 + lengthdir_x(80, angle) + 0.5), floor(y + 32 + lengthdir_y(80, angle) + 0.5), script_execute(index_to_inv_item, i)))
        global.inv_sprites[| sprite_count].counter += offset
        global.inv_sprites[| sprite_count].angle = angle
        offset += pi/8
        angle -= angle_incr
        sprite_count ++
    }
}
