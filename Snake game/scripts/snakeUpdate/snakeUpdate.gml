// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function snakeUpdate(length,xx,yy,dir,cell_size,hit){
	//length == the length variable in oSnake, as in how long the snake is
	//xx == the array of the x coordinates of the Snake
	//yy == the array of the y coordinates of the Snake
	//dir == the direction the Snake's head is facing
	//cell_size == the size of each of the squares in the room
	//hit == which part of the Snake the head hit, if it does hit it's body
	
	//Move the Snake's tail
	for (var i=0; i<length; i++) 
	{
		xx[length-i] = xx[length - (i+1)];
		yy[length-i] = yy[length - (i+1)];
	}
	
	//Update the Snake's head
	if dir == 0 { yy[0]-=cell_size }
	if dir == 1 { xx[0]+=cell_size }
	if dir == 2 { yy[0]+=cell_size }
	if dir == 3 { xx[0]-=cell_size }
	
	//Check if the Snake's head is touching the body
	var _hit = 1;
	for (var i=1; i<length; i++)
	{
		if xx[0] == xx[i] and yy[0] = yy[i]
		{
			hit = i;
			_hit = 0;
			break;
		}
	}
	
	//Return Snake
	var a;
	a[0] = _hit;
	a[1] = hit;
	a[2] = xx;
	a[3] = yy;
	
	return a;
}