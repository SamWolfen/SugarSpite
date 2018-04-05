//control movement and actions of the glob zombie


if (left = true) || (dir = 1)
{
dir = 1;
image_xscale = -1;

}

if (left = false) || (dir = -1)
{
dir = -1
image_xscale = 1;

}

if (attSpan > 0)
{

    number = random_range(1,5);
    attSpan -= number*global.Delta;

}else{

    //what happens when he gets bored?    

    movesp = 3;
    number = random_range(1,4);
    
    switch (number)
    {
    
        case 1:
        attSpan = 10;
        break;
    
        case 2:
        
        dir = dir*-1;
        attSpan = 15;
        break;
        
        case 3:
        movesp = 0;
        attSpan = 10;
        break;
        
        case 4:
        attSpan = 20;
        break;
    }
    

}





//collisions
if (place_meeting(x+hsp,y-4, obj_block))
{
dir = dir*-1;
}

//apply movement
hsp = movesp*dir;
x += hsp;

