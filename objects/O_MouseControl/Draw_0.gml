//desenho sobra item quando drag
if(itemDrag != -1){
	draw_set_alpha(0.5);
	draw_sprite(Sprite_Objects_Tools,itemDrag,mouse_x-20,mouse_y-20);
	
	draw_set_alpha(1.0);
	show_debug_message(itemDrag);
	
}

