/// @desc Add Player points
/// @function add_points([amount])
/// @param [amount]
var amount = argument0;
with (obj_PlayerController){
	points = points + amount;
}