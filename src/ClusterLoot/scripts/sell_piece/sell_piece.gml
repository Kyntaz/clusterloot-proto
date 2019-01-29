/// @desc Increases the player's money by certain amount
/// @function buy_piece([amount])
/// @param [amount]
var amount = argument0;
if(amount <0){
	with (obj_PlayerController){
		money = money + abs(amount);
	}
	audio_play_sound(snd_Sell, 1, false);
}