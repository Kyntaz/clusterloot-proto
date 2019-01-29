///@desc Draws A Tooltip
///@param text
///@param font
///@param text color
///@param tooltip color
///@param alpha


var text_width;
var text_height;
var old_alpha;
var old_color;

// Set alpha
old_alpha = draw_get_alpha();
draw_set_alpha(argument4);

// Set font
draw_set_font(argument1);

// Set Aligns
draw_set_valign(fa_bottom);

text_width  = 5 + string_width(argument0);
text_height = 5 + string_height(argument0);

if ( ( (  x - room_width + text_width) <= ( room_width - 5) ) && ( x - text_width ) < 0 )
{    
    // Draw rect around the text
    draw_roundrect_color(  x,  y - text_height,  x + text_width,  y + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);
    draw_set_halign(fa_left);
    // Draw the text inside the rect
    draw_text(  x ,  y - 2, argument0);

    // Reset old color
    draw_set_color(old_color);
}
else
{
    // Set alignment to right
    draw_set_halign(fa_right);

    // Draw rect around the text
    draw_roundrect_color(  x,  y - text_height,  x - text_width,  y + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);    

    // Draw the text inside the rect
    draw_text( x,  y - 2, argument0);    

    // Reset old color
    draw_set_color(old_color);    

    // Reset alignment to left
    draw_set_halign(fa_left);

}

// Reset alignment
draw_set_valign(fa_middle);    


// Reset alpha
draw_set_alpha(old_alpha);
/**/