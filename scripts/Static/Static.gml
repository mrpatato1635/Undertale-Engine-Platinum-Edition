function Static_Get(_key, _default = 0) {
    var static_ = Storage_GetStatic().Get("general");
    return static_.Get(_key, _default);
}


function Static_Set(_key, _value) {
    var static_ = Storage_GetStatic().Get("general");
    static_.Set(_key, _value);
}