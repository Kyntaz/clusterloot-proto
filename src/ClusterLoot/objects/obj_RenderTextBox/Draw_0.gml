if (obj_TutorialManager.phase == phase) {
	draw_set_color($7d8a99);
	var h = string_height_ext(txt, -1, width) + 5;
	var w = width + 20;
	draw_roundrect(x - w / 2, y - 5, x + w / 2, y + h, false);

	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_font(fnt_PlayerController);
	draw_set_color($cdeaf2);
	draw_text_ext(x - width / 2, y, txt, -1, width);

	draw_set_color(c_white);
}