function Kr_UnInit(){
	ds_map_delete(global._kr,"KR");
	ds_map_destroy(global._kr);
	return true;
}