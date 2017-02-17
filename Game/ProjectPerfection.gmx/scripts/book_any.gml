///book_any()
var index = save_get_value(obj_save_data, "lore", 0);
var loreText = book_text();

return index < array_length_1d(loreText);
