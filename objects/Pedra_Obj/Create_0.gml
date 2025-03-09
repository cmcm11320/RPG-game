/// @description Insert description here
// You can write your code in this editor
event_inherited();

aberto = 0;
interacted = 0;
#region estado_idle


estado_idle.inicio = function(){
	
	
	sprite_index = Pedra;
	image_index = 0;
	

	
}

estado_idle.mid = function(){
change_estado(estado_animation);

}


#endregion

#region estado_animation


estado_animation.inicio = function(){

	sprite_index = Pedra;
	image_index = 0;
	aberto=1;
	

	

}
estado_animation.mid = function(){

show_debug_message("aqui vai ganhar um item foda");


	if(image_index>=image_number-1){
		show_debug_message("ola");
		change_estado(estado_final);
	}

}


#endregion



#region estado_final

estado_final.inicio = function(){

    sprite_index = Pedra;
	image_index = 0;

}


#endregion