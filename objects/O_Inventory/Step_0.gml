//switch(inventory){
//	case 0:
//		inventory_name = sword1.title;
//		inventory_description = sword1.description;
//	break;
//	default:
//		inventory_name = vazio.title;
//		inventory_description = vazio.description;
//		//show_debug_message("odfijiof");
//	break;}

x = camera_get_view_x(view_camera[0])+10 ;
y = camera_get_view_y(view_camera[0])+20 ;
//show_debug_message(aberto);
//show_debug_message(menu_trigger);

if(aberto xor menu_trigger){
visible = true;
}
//else if(aberto && menu_trigger){
//	show_debug_message("both");
//	visible = false;
//	aberto = false;
//	menu_trigger = false;
//} 
else{visible = false;}