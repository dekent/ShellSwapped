for (var i = global.numSpritesToRemove; i >= 0; i--)
{
    instance_destroy(global.listOfSprites[i])
}

global.numSpritesToRemove = 0
