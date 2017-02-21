///inventory_create_shield()

var shield;

shield[shield_index.item_id] = item_ids.shield;
shield[shield_index.quality] = item_quality.legendary;
shield[shield_index.max_health] = 25;
shield[shield_index.recharge_delay] = 3;
shield[shield_index.recharge_rate] = 10;
shield[shield_index.name] = "Shield";
shield[shield_index.inv_sprite] = spr_inv_shield1;
shield[shield_index.world_sprite] = spr_inv_shield1;
return shield;
