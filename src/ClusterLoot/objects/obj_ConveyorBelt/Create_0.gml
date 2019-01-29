event_inherited();
initialize_joint_points();
add_joint_point(80, 10);
add_joint_point(-80, 10);

active = true;
dir = 1;
depth = depth + 10;
color = obj_ColorManager.selected_color;
image_blend = obj_ColorManager.colors[color];

mode = 0;