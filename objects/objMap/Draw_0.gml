depth = -9999;
image_alpha = place_meeting(x, y, objCursor) ? 0.2 : 1;
draw_set_alpha(image_alpha);

x = camera_get_view_x(view_camera[0]) + 512;
y = camera_get_view_y(view_camera[0]) + 288;
draw_self();

with (objRadioactive) { with (objMap) { draw_sprite_ext(sprRadioactiveM, 0, x + other.x*scaleX, y + other.y*scaleY, other.image_xscale, other.image_yscale, 0, c_white, 1); } }
with (objTarget) { with (objMap) { draw_sprite(sprTargM, 0, x + other.x*scaleX, y + other.y*scaleY); } }
with (objMiniTarget) { with (objMap) { draw_sprite(sprMiniTargM, 0, x + other.x*scaleX, y + other.y*scaleY); } }
with (objAsteroid) { if !stored { with (objMap) { draw_sprite(sprAsterM, 0, x + other.x*scaleX, y + other.y*scaleY); } } }
with (objOtherHole) { with (objMap) { draw_sprite(sprHoleM, other.differentCol, x + other.x*scaleX, y + other.y*scaleY); } }
with (objMarker) { with (objMap) { draw_sprite(sprMarkM, 0, x + other.x*scaleX, y + other.y*scaleY); } }

draw_set_alpha(1);