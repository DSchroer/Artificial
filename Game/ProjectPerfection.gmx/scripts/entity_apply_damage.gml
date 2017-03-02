///entity_apply_damage(damage)
var damage_taken = argument0;
damage += damage_taken;
damage_dir = other.direction;
damage_from = other.parent;
event_user(0);

