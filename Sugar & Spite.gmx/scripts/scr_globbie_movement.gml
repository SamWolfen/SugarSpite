//control movement and actions of the glob zombie

if (left = true)
{
hsp = movesp*-1;

}

if (left = true)
{
hsp = movesp;

}


//collisions
if (place_meeting(x+hsp,y, obj_block))
{
hsp = 0;
}

//apply movement
x += hsp;
