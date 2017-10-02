/// @description  movement
/*if device_mouse_check_button_pressed(0, mb_left){
	if(!instance_exists(omouseClick)){
		instance_create_layer(mouse_x, mouse_y, "Instances", omouseClick);
	}else{
		omouseClick.x = mouse_x;
		omouseClick.y = mouse_y;
	}
	mouseDistance = point_distance(x, y, omouseClick.x, omouseClick.y);
	move_towards_point(omouseClick.x, omouseClick.y, min(playerSpeed, mouseDistance));
	}
	*/
	
if mouse_check_button(mb_right){
	targetX = mouse_x;
	targetY = mouse_y;
	}
if targetY != noone && targetY != noone {
	mouseDistance = point_distance(x, y, targetX, targetY);
	move_towards_point(targetX, targetY, min(playerSpeed, mouseDistance));
	//if (mp_grid_path(global.grid, path, x, y, targetX, targetY, true)){
	//	path_start(path, playerSpeed, path_action_stop, false);
	//}
	
}

if mouse_check_button_released(mb_right){
	instance_create_layer(mouse_x, mouse_y, "Instances", objMouseClick);
}
