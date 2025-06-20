if !fadeOut { image_alpha += 0.01; }
else { image_alpha -= 0.01; }

if image_alpha <= 0 { instance_destroy(); exit; }
image_alpha = clamp(image_alpha, 0, 1);