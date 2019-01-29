draw_set_font(fnt_PlayerController);
draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_text(925,360,"Points: " + string(obj_PlayerController.points));
draw_text(925,390,"Money Left: " + string(obj_PlayerController.money));
if (obj_PlayerController.points < 100) draw_text(925,450,"Less than 100 points? You're fired!");
else {
	draw_text(925,450,"Your final score is: " + string(floor(obj_PlayerController.points + obj_PlayerController.money / 10)));
}
