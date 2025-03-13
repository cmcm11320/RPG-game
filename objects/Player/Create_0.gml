/// @description Insert description here
// You can write your code in this editor

//init estado

event_inherited();

if(room == Frente_Casa){

show_debug_message("destruido");
}

meu_dano = noone;
meu_interact = noone;

estado_idle = new State_Machine();

estado_walk = new State_Machine();

estado_attack = new State_Machine(); 

estado_interact = new State_Machine();

#region Idle
estado_idle.inicio = function(){
	
	var _sprite = Player_Front_Idle;
	Last_State = "Idle";
	
	//dir_idle = (point_direction(0,0,vel_horizontal,vel_vertical)div 90);
	
	
	//_sprite = define_sprite(dir_idle,Player_Right_Idle,Player_Left_Idle,Player_Back_Idle,Player_Front_Idle);
	 

	 
	 switch(dir){
		case "esquerda":	 _sprite = Player_Left_Idle; break; 
		case "direita":	 _sprite = Player_Right_Idle; break; 
		case "cima":	 _sprite = Player_Back_Idle; break; 
		case "baixo":	 _sprite = Player_Front_Idle; break; 
	 }
	 
	 

	
	sprite_index = _sprite;
	image_index = 0;
	
}

estado_idle.mid = function(){
	

//condicao p sair do estado
if(up xor down xor left xor right){
	
		change_estado(estado_walk);
}

if(attack){
	
	change_estado(estado_attack);
	
}
if(interact){
	
		change_estado(estado_interact);
	}
		
}

#endregion

#region Walk

estado_walk.inicio = function(){
	
	
	var _sprite;
	Last_State = "Walk";
	
	_sprite = define_sprite(dir_walk, Player_Right_Walk,Player_Left_Walk,Player_Back_Walk,Player_Front_Walk);
	
		sprite_index =_sprite;
		image_index = 0;
	}
	
	
estado_walk.mid = function(){
	
	dir_walk = (point_direction(0,0,vel_horizontal,vel_vertical)div 90);
		 if(right == 1){
		  dir="direita";
	 }
	 if(left==1){
		 dir =  "esquerda";
	 }
	 if(up==1){
		 dir = "cima";
	 }
	 if(down==1){
		  dir = "baixo";
	 }
	
	
	if(vel_vertical == 0 and vel_horizontal == 0){
		change_estado(estado_idle);
	}
	
	if(attack){
		change_estado(estado_attack);
	}
	if(interact){
	
		change_estado(estado_interact);
	}
	
}
	

#endregion

#region attack

estado_attack.inicio = function(){
	
	dir_walk = (point_direction(0,0,vel_horizontal,vel_vertical)div 90);
	_x = lengthdir_x(16,dir_walk*90);
	_y = lengthdir_y(16,dir_walk*90);
	
	
	
	
	
	if(Last_State == "Idle"){
		switch(dir){
		case "esquerda":	 _sprite = Player_Left_Attack;
		dir_side = 2;
		break; 
		case "direita":	 _sprite = Player_Right_Attack;dir_side = 0;
		break; 
		case "cima":	 _sprite = Player_Back_Attack; dir_side = 1;
		break; 
		case "baixo":	 _sprite = Player_Front_Attack;dir_side = 3;
		break;  
	 }
	 
	_x = lengthdir_x(16,dir_side*90);
	_y = lengthdir_y(16,dir_side*90);

		
	}
	else{
		 _sprite = define_sprite(dir_walk, Player_Right_Attack,Player_Left_Attack,Player_Back_Attack,Player_Front_Attack);
		 

	}
	
	
	
	meu_dano = instance_create_depth(x+_x,y+_y,depth,Player_Damage);

	sprite_index =_sprite;
	image_index = 0;
	
	vel_horizontal = 0;
	vel_vertical = 0;
	
	
	

}

estado_attack.mid = function(){
	
		 
	 
	 //volta pro idle após animation
	
	var vel_img = (image_speed / game_get_speed(gamespeed_fps))*10;
	
	if(image_index>=image_number-vel_img){
		change_estado(estado_idle);	
	}
}

estado_attack.ending = function(){
	instance_destroy(meu_dano);
}

#endregion



#region Interact

estado_interact.inicio = function(){
	dir_walk = (point_direction(0,0,vel_horizontal,vel_vertical)div 90);
	
	
	 
	_x = lengthdir_x(16,dir_walk*90);
	_y = lengthdir_y(16,dir_walk*90);
	
	meu_interact = instance_create_depth(x+_x,y+_y,depth,Player_Interact);

}

estado_interact.mid = function(){

change_estado(estado_idle);	


}

estado_interact.ending = function(){

	instance_destroy(meu_interact);

}

#endregion

//Iniciar variáveis

//Controls

up = noone;
down = noone;
left = noone;
right = noone;
attack = noone;
interact = noone;

//Variáveis mov

vel_horizontal = 0;
vel_vertical = 0;

//Vel Player

vel = 2;

//direcao

dir_idle = 0;
dir_walk = 0;
dir_side = 0;
dir = "baixo";
Last_State = "Idle";

inicia_estado(estado_idle);
