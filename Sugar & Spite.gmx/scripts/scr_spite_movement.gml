//follow sugar

if (instance_exists(obj_sugar))
{
    move_towards_point(obj_sugar.x, obj_sugar.y, hsp);
        hsp = hsp+0.05;
}

//radius around sugar

if (collision_circle( x, y, 40, obj_sugar, false, false ))
{

hsp = hsp - 0.2;

if (sign(hsp)<0)
{
    hsp = 0;
    
}
}



//sprite

if left = true
{
image_xscale = -1;
}

if left = false
{
image_xscale = 1;
}

//disappear when attacking
if (global.attacking != 0)
{
 sprite_index = spr_spite_cloud;
 if (image_index > 33)
 {
    image_speed = 0;
 }
}

if (global.attacking = 0)
{
    if (sprite_index = spr_spite_cloud) 
    {
     image_speed = -1;
     
     if (image_index =1)
     {
     sprite_index = spr_spite_idle;
     }
    }
}

