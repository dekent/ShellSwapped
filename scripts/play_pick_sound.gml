switch(argument0)
{
    case penny: audio_play_sound(snd_pick_penny, 100, false);
    break;
    case pearl: audio_play_sound(snd_grab, 100, false);
    break;
    case pebble: audio_play_sound(snd_pebbles, 100, false);
    break;
    case seaweed: audio_play_sound(snd_seaweed, 100, false);
    break;
    case stud: audio_play_sound(snd_grab, 100, false);
    break;
    case live_fish: audio_play_sound(snd_seaweed, 100, false);
    break;
}

