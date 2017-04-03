///entity_apply_damage(damage, parent)
var damage_taken = argument0;
var parent = argument1;
damage += damage_taken;
damage_dir = other.direction;
damage_from = parent;
event_user(0);

