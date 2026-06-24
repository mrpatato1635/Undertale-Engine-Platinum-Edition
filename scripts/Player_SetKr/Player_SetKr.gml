function Player_SetKr(){
	var KR=argument[0];
	var _map=global._kr;
	if(ds_map_exists(_map,"KR")){
		ds_map_set(_map,"KR",KR);
	}else{
		global._kr=ds_map_create();
		ds_map_add(global._kr,"KR",KR);
	}
	return true;
}