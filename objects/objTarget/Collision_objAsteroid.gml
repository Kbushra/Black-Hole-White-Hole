with other
{
	if !place_meeting(x, y, objPlayer)
	{ x = lerp(x, other.x, 0.2); y = lerp(y, other.y, 0.2); }
}