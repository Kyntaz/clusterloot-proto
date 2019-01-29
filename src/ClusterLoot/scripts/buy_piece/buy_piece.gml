/// @desc Reduces the player's money by certain amount
/// @function buy_piece([amount])
/// @param [amount]
var amount = argument0;
if(amount>0){
	with (obj_PlayerController){
		money = money - amount;
	}
	price = -amount;
}