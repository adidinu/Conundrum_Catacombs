despawnTimer = max(despawnTimer - delta_time/1000000,0);

if(despawnTimer <= 0){
	isActive = false;
	instance_destroy(oBlackScreen);
}
else if(despawnTimer <= 2){
	image_alpha = despawnTimer / 2;
}