event_inherited();
initialize_joint_points();
add_joint_point(0, 20);
color = obj_ColorManager.selected_color;
image_blend = obj_ColorManager.colors[color];

last_activator = -1;

alarm[0] = 120;