function Player_GetKr(){
	var _map=global._kr;
	if(ds_map_exists(_map,"KR")){
		return _map[? "KR"];
	}else
		ds_map_add(_map,"KR",0);
	return 0;
}