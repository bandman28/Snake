/// @description Insert description here
// You can write your code in this editor
cell_size = 32;
length = 1;
xx[0] = x - (x mod cell_size);
yy[0] = y - (y mod cell_size);
dir = 1;
hit = -1;
update_speed = 15;
alarm[0] = update_speed;