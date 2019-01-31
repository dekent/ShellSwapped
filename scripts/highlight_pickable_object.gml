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
        if (pick_object.object_index == live_fish){
            audio_stop_sound(snd_fish)
        }
        
        if (pick_object.object_index == spiral_shell || pick_object.object_index == conch_shell)
        {
            if (pick_object.object_index == spiral_shell)
            {
                global.final_sprite = clawdette_spiral
            }
            else if (pick_object.object_index == conch_shell)
            {
                global.final_sprite = clawdette_conch
            }
            room_goto(final)
        }
        else
        {
            scr_inv_gain_item(pick_object.object_index)
        }
        play_pick_sound(pick_object.object_index)
        instance_destroy(pick_object.id) 
        pick_object = noone
    }
}
