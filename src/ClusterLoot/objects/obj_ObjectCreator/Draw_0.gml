draw_self();

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x, y - 100, object_names[current_id]);
draw_text(x, y - 70, "Price: " + string(object_prices[current_id]));
