function draw_rectangle_border() {
	xx1 = argument[0]
	yy1 = argument[1]
	xx2 = argument[2]
	yy2 = argument[3]
	w = argument[4]
	draw_line_width(xx1 - w/2, yy1, xx2 + w/2, yy1, w);
	draw_line_width(xx2, yy1 + w/2, xx2, yy2 - w/2, w);
	draw_line_width(xx1 - w/2, yy2, xx2 + w/2, yy2, w);
	draw_line_width(xx1, yy1 + w/2, xx1, yy2 - w/2, w);


}
