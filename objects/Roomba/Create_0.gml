/// @description Insert description here
// You can write your code in this editor

//timer state change

tempo_state = game_get_speed(gamespeed_fps)*2;
timer_state = tempo_state;
target_x = 0;
target_y = 0;
pacify = 1;
ja_atacou=0;
ja_morto = 0;

event_inherited();

#region estado_idle


estado_idle.inicio = function(){
	
	sprite_index = Roomba_Sprite;
	image_index = 0;
	
	timer_state = tempo_state;
	
}



estado_idle.mid = function(){
	
	timer_state--;
	
	
	
	if(random(timer_state)<=tempo_state*.01){
		change_estado(choose(estado_idle,estado_walk,estado_walk));
	}
	
	
	
	
}

#endregion


#region estado_walk
estado_walk.inicio = function(){
	
	sprite_index = Roomba_Sprite;
	image_index = 0;
	
	timer_state = tempo_state;	
	
	target_x = irandom(room_width);
	
	image_xscale = sign(target_x - x);
	
}


estado_walk.mid = function(){
	
	timer_state--;
	
	
		if(random(timer_state)<=tempo_state*.01){
			change_estado(choose(estado_idle,estado_walk,estado_idle));
		}
			
		
	
	
	if(colisao_obj == true){
	var_col = true;}
	else{
	var_col = false;}
	mp_potential_step(target_x,irandom(room_height),1,var_col);
	
}



#endregion
