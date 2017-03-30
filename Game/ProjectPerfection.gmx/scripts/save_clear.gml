///save_clear()
with(obj_save_data)
{
    ds_map_clear(save_data);
    var current_version = "v" + GM_version;
    save_set_value(self, "version", current_version);
    save_flush(self);
}

