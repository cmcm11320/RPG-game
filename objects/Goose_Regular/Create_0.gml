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
var_col = false;

event_inherited();

#region estado_idle


estado_idle.inicio = function(){
	
	sprite_index = Goose_Regular_Idle;
	image_index = 0;
	ja_atacou=0;
	
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
	
	sprite_index = Goose_Regular_Walk;
	image_index = 0;
	
	timer_state = tempo_state;	
	
	target_x = irandom(room_width);
	
	image_xscale = sign(target_x - x);
	
}


estado_walk.mid = function(){
	
	timer_state--;
	
	
	if(pacify==1){
		if(random(timer_state)<=tempo_state*.01){
			change_estado(choose(estado_idle,estado_walk,estado_idle));
		}
			
		}else{
			change_estado(estado_attack);
	
	}
	
	
	if(colisao_obj == true){
	var_col = true;}
	else{
	var_col = false;}
	mp_potential_step(target_x,irandom(room_height),1,var_col);
	
}



#endregion

#region estado_attack

estado_attack.inicio = function(){
	
	sprite_index =  Goose_Regular_Attack_Right;
	image_index = 0;
	ja_atacou=0;
	
	
	image_xscale = sign(Player.x - x);
}


estado_attack.mid = function(){
	
	//mp_linear_step_object(Player.x,Player.y,1,colisao_obj);
	image_xscale = sign(Player.x - x);
	if(colisao_obj == true){
	var_col = true;}
	else{
	var_col = false;}
	mp_potential_step(Player.x,Player.y,1,var_col);
	
	//slime mandar os outros seguirem
	//var n = instance_number(object_index);
	//for(var i=0; i<n;i++){
	//	var slimes = instance_find(object_index);
		
	//	if(slimes==id){
	//		//me achei
	//	}
	//	else{
				
	//	}
	//}
	
	
	
}

#endregion

#region estado_hurt

estado_hurt.inicio = function(){
	
	sprite_index =  Goose_Regular_Hurt;
	image_index = 0;
	
	//pra que o dano nunca seja maior que zero
		
	
	
	pacify = 0;
}


estado_hurt.mid = function(){
	
	show_debug_message(ja_morto);
	
	if(hp>0 && ja_atacou==0 ){
		
		hp = hp-1;
		ja_atacou=1;
	
	}
	
	
	if(image_index>=image_number-1){
		if(hp>0){
	change_estado(estado_attack);	
	}
		
	}
	
	if(hp<=0){
		ja_morto=1;
	
	}
	if(ja_morto==1){
	change_estado(estado_death);
	
	}
	
	
	
	
}

//estado_hurt.ending = function(){



//}

#endregion


#region estado_death

estado_death.inicio = function(){
	
	sprite_index =  Goose_Regular_Death;
	image_index = 0;
	ja_morto = 1;
}


estado_death.mid = function(){
	
	if(image_index>=image_number-1){
		instance_destroy();
	}
	
}

#endregion
