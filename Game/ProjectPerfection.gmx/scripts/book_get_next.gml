///book_get_next()

var index = save_get_value(obj_save_data, "lore", 0);
save_set_value(obj_save_data, "lore", index + 1);
save_flush(obj_save_data);

var loreText = book_text();

return loreText[index % array_length_1d(loreText)];
