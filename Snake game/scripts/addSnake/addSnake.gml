// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addSnake(length,xx,yy){
	length++;
	xx[length] = xx[length-1];
	yy[length] = yy[length-1];
	
	var b;
	b[0] = length;
	b[1] = xx;
	b[2] = yy;
	
	return b;
}