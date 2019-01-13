//Inventory code from https://forum.yoyogames.com/index.php?threads/flexible-inventory-system.34884/

global.inventory = ds_grid_create(10, 2);
ds_grid_clear(globa.inventory, 0); // what if we want to load?

/// @description Modifies a slot in the inventory. Can add and remove items, and set the item.
/// @function scr_inv_amount(slot, amount);
/// @param slot
/// @param amount

//Assign local variables
var slot = argument0;
var amount = argument1;

global.inventory[# slot, 1] += amount; //Increase amount by input amount
 
//Clear slot if the amount is less than or equal to 0
if (global.inventory[# slot, 1] <= 0)
 {
 global.inventory[# slot, 0] = item.none;
 global.inventory[# slot, 1] = 0;
 }
