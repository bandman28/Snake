/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_up)		and yy[0]-cell_size!=yy[1] { dir = 0 }
if keyboard_check_pressed(vk_right)		and xx[0]+cell_size!=xx[1] { dir = 1 }
if keyboard_check_pressed(vk_down)		and yy[0]+cell_size!=yy[1] { dir = 2 }
if keyboard_check_pressed(vk_left)		and xx[0]-cell_size!=xx[1] { dir = 3 }

if keyboard_check_pressed(vk_space)
{
	var d = addSnake(length,xx,yy);
	length = d[0];
	xx = d[1];
	yy = d[2];
}