/// @description 

loadChunk();
waterLevel = 35;

for(var i = 0; i < numSizeBlocks; i++) {
	for(var j = numSizeBlocks; j >=0; j--) {
		var zz = (grid[# i, j]);
		
		if (zz < waterLevel){
			var water = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objWater);
		}else if (zz > 60) and (zz < 80){
			if chance(0.1){
				var tree = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objTree);
				}
		}else if (zz >= 85){
			var rock = instance_create_layer(x + i*blockSize, y + j*blockSize,"Instances",objRock);
		}
	}
}

mp_grid_add_instances(global.grid, objWater, true);
mp_grid_add_instances(global.grid, objRock, true);
mp_grid_add_instances(global.grid, objTree, true);