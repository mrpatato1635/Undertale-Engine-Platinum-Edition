// settings data is globally available and is not bound on save slot.
function Storage_Custom_Settings(storages){
	var s=new Storage(Storage_MakeGetFilePathFunc(false,"settings.json"));
	storages.Register("settings",s);
	global._storage_cache_settings_general=new StorageZoneStruct();
	s.Register("general",global._storage_cache_settings_general);
}

function Storage_GetSettings(){
	return Storage_GetManager().Get("settings");
}

function Storage_GetSettingsGeneral(){
	return global._storage_cache_settings_general;
}

function Storage_SaveSettings(){
	var s=Storage_GetSettings();
	s.SaveToFile();
}

function Settings_Set(key, value) {
	var general = Storage_GetSettingsGeneral();
	general.Set(key, value);
	Storage_SaveSettings();
}