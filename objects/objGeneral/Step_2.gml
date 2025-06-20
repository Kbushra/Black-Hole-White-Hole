var clampX = clamp(objPlayer.x - 341.5, 0, room_width - 683);
var clampY = clamp(objPlayer.y - 192, 0, room_height - 384);
var lerpX = lerp(camera_get_view_x(view_camera[0]), clampX, 0.2);
var lerpY = lerp(camera_get_view_y(view_camera[0]), clampY, 0.2);

camera_set_view_pos(view_camera[0], lerpX, lerpY);