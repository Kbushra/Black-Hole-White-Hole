visible = global.markerVisible;

x = objPlayer.x;
y = objPlayer.y;

var targAngle = 0;
if image_index == 0 { targAngle = point_direction(x, y, objTarget.x, objTarget.y); }
else { targAngle = point_direction(x, y, objMarker.x, objMarker.y); }

image_angle += angle_difference(targAngle, image_angle) * 0.1;