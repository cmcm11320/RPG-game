/// @description Insert description here
// You can write your code in this editor
event_inherited();

aberto = 0;
interacted = 0;
#region estado_idle


estado_idle.inicio = function(){
	
	
	sprite_index = Bau_Closed;
	image_index = 0;
	

	
}

estado_idle.mid = function(){
change_estado(estado_animation);

}


#endregion

#region estado_animation


estado_animation.inicio = function(){

	sprite_index = Bau_Opening;
	image_index = 0;
	aberto=1;
	

	

}
estado_animation.mid = function(){

show_debug_message("olazinho");
show_debug_message(image_index);
show_debug_message(image_number);

	if(image_index>=image_number-1){
		show_debug_message("ola");
		change_estado(estado_final);
	}

}


#endregion



#region estado_final

estado_final.inicio = function(){

    sprite_index = Bau_Open;
	image_index = 0;

}


#endregion