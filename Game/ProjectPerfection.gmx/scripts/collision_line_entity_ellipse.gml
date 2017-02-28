///collision_line_entity_ellipse(x1, y1, x2, y2)
with(obj_entity)
{
    if(self.id != other.id && line_in_ellipse(argument0, argument1, argument2, argument3, x + hbox_x1, y + hbox_y1, x + hbox_x2, y + hbox_y2))
    {
        other.last_object = self.id;
        return 1;
    }
}
return -1;
