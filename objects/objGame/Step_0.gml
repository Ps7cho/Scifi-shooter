/// @description 

if(keyboard_check_pressed(ord("0"))) { debug = !debug }
if(keyboard_check_pressed(ord("R"))) { game_restart(); }
if(keyboard_check_pressed(vk_escape)) { game_end(); }

if keyboard_check_pressed(ord("F")){
 if window_get_fullscreen() { window_set_fullscreen(false); }
   else{ window_set_fullscreen(true);}
}