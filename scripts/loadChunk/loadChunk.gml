numSizeBlocks = (chunkSize / blockSize);

grid = ds_grid_create(numSizeBlocks,numSizeBlocks);

if(ds_map_exists(chunkMap,getKey(x,y))){
    var str = ds_map_find_value(chunkMap,getKey(x,y));
    ds_grid_read(grid,str);
}else{
	for(var i = 0; i < numSizeBlocks; i++) {
		for(var j = 0; j < numSizeBlocks; j++){
			var zz = getPerlinNoise_2D(x / blockSize + i,y / blockSize + j,100);
			grid[# i,j] = zz;
		}	
	}
}	

ds_map_add(chunkLoadedSet,getKey(x,y),1);
