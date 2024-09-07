//Draw rectangle
draw_rectangle_color(
	xpos, 
	ypos, 
	xpos + RectSize,
	ypos + RectSize, 
	c_black, 
	c_black, 
	c_black, 
	c_black, 
	true
);

//Draw coordinates
draw_set_font(coordsFont);
draw_set_color(c_gray);
for(var i = 0; i < 5; i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(xpos + RectSize/4 * i, ypos + RectSize + coordsbuffer, -0.4 + 0.2 * i);
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text(xpos - coordsbuffer, ypos + RectSize/4 * i, -0.4 + 0.2 * i);
}

//Draw circle
draw_circle_color(
	xpos + RectSize/2, 
	ypos + RectSize/2, 
	circleradius,
	circlecolor,
	circlecolor, 
	false 
);

//Dots
for(var i = 0; i < dotindex; i++){
	draw_circle_color(xpos + dotsOnMap[i].xposDot, ypos + dotsOnMap[i].yposDot, dotradius, dotColor, dotColor, false);
}

//Draw data text
draw_set_font(dataFont);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(textoriginxpos, textoriginypos + datatextSpacing,$"Number of dots: {numberofDots}");
draw_text(textoriginxpos, textoriginypos + datatextSpacing*2,$"Dots inside Circle: {numberDotsinCircle}");

var pistring = string_format(estimatedPI, 5, 5);
draw_text(textoriginxpos, textoriginypos + datatextSpacing*4,$"Calculated Pi: {pistring}");
