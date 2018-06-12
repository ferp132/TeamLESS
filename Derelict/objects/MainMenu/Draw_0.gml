    draw_self();        //default draw func present in every draw event
                        //first draw func
    if(flash<0)            //if flash is greater than 0
    {
    flash--;                //flash is decremented here because draw happens last
    shader_set(shWhite);    //call the white shader
    draw_self();               //draw itself again
    shader_reset();           //reset the shader after drawing
    }
    


