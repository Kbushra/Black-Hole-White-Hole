speed = lerp(speed, 3, 0.8);

image_alpha -= 0.025;
if image_alpha <= 0 { instance_destroy(); }