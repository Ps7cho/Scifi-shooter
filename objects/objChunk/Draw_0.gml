/// @description Insert description here


for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = 0; j < numSizeBlocks; j++) {
		draw_set_color(getColorZ(grid[# i, j] )	);
		draw_rectangle(x + i*blockSize, y + j*blockSize, x + (i+1)*blockSize, y + (j+1)*blockSize,false);
		//draw_text_color(x + i*blockSize, y + j*blockSize, string(i), c_white, c_white, c_gray, c_gray, 1);
	}
}
draw_set_color(c_red);
draw_rectangle(x,y,x+chunkSize,y+chunkSize, true);
