

key_up = keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord('X'));
key_special = keyboard_check_pressed(vk_shift)

//use input
move =  key_left + key_right;



if (sign(move) = -1)
    {
    left = true;
    right = false;
    }
if (sign(move) = 1)
    {
    left = false;
    right = true;
    }

if left = true
{
image_xscale = -1;
}

if left = false
{
image_xscale = 1;
}

hsp= move * movesp;

if (hsp = 0) && (global.attacking = 0)
{

    if (key_jump = 0)
    {
    sprite_index = spr_sugar_idle;
    }
    
}

if (hsp != 0) && (global.attacking = 0)
{

    if (place_meeting(x,y+10, obj_block))
    {
    sprite_index = spr_sugar_running;
    }
    
}


//gravity
if (vsp < 10 )
{vsp+= grav};




//jump
if (place_meeting(x,y+1, obj_block))
{
vsp = key_jump * -jumpsp;
if (key_jump = 1)
{
//audio_play_sound(jump, 10, false);
}
}





//collisions
if (place_meeting(x+hsp,y, obj_block))
{
hsp = 0;
}

if (place_meeting(x,y+vsp,obj_block))
{
    while(!place_meeting(x,y+sign(vsp),obj_block))
    {
    y+= sign(vsp);
    }
    vsp=0;
    

}




//friction/ inertia/apply movement
if (!hsp = 0 ) 
{hsp += grav}

x += hsp;
y += vsp;

//Attack

if (key_attack == 1)
{

global.attacking = 1;
//normal attack
}

if global.attacking == 1
{
sprite_index = spr_test;

if (image_index >= 26)
{global.attacking = 0;
sprite_index = spr_sugar_idle;
}}
