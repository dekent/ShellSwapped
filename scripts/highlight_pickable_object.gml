if (pick_object != noone)
{
    if (instance_exists(pick_object))
    {
        pick_object.image_index = 0
    }
    else
    {
        pick_object = noone
    }
}
pick_object = noone
min_dst = pick_threshold
for (i = 0; i < instance_number(pickable); i ++)
{
    //check for the closest object that's also in range, then highlight it
    temp_pick_object = instance_find(pickable, i)
    dst = script_execute(distance_from_player, temp_pick_object.x, temp_pick_object.y)
    if (dst < min_dst)
    {
        pick_object = temp_pick_object
        min_dst = dst
    }
}
if (pick_object != noone)
{
    pick_object.image_index = 1
    
    //todo: check for pickup button press
    if (keyboard_check_pressed(ord('Z')))
    {
        scr_inv_gain_item(pick_object.object_index)
        instance_destroy(pick_object.id)
        pick_object = noone
    }
}