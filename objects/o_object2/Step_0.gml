image_alpha -= .03;

if (image_alpha <= 0) instance_destroy();


x += ( owner.x + xoff - x) / 25 + lengthdir_x(1, random(360));
y += ( owner.y + yoff - y) / 25 + lengthdir_y(1, random(360));


//x += ( owner.x + xoff - x) / 25 + lengthdir_x(5, random(360));
//y += ( owner.y + yoff - y) / 25 + lengthdir_y(5, random(360));


//x -= ( owner.x + xoff - x) / 25;
//y -= ( owner.y + yoff - y) / 25;


//x += ( -owner.x - xoff + x) / 625;
//y += ( -owner.y - yoff + y) / 625;

//x -= (x - owner.x) / 258;
//y -= (y - owner.y) / 258;

