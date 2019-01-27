for (var i = ds_list_size(global.inv_sprites) - 1; i >= 0; i--)
{
    instance_destroy(global.inv_sprites[| i])
}
ds_list_clear(global.inv_sprites)
