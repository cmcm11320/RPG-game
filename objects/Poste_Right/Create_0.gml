/// @description Insert description here
// You can write your code in this editor
event_inherited();

aceso = 0;
interacted = 0;
My_TextBox = noone;
#region estado_idle


estado_idle.inicio = function(){
	
	
	sprite_index = Poste_Right_Off;
	image_index = 0;
	interacted = 0;

	
}


#endregion

#region estado_animation


estado_animation.inicio = function(){

	
	image_index = 0;
	

	
	if(aceso==1){
		sprite_index = Poste_Right_Acendendo;
	}else{
		sprite_index = Poste_Right_Apagando;
		}
	

	

}
estado_animation.mid = function(){

	
//if My_TextBox == noone{
//		My_TextBox = instance_create_layer(x,y,"TextBoxes",Idle_Textbox);
//	}
	if(image_index>=image_number-1){
		if(aceso==1){
			
		change_estado(estado_final);
		}else{
			change_estado(estado_idle);
		}
	}

}


#endregion



#region estado_final

estado_final.inicio = function(){
	
	if(aceso==1){
	
    sprite_index = Poste_Right_Aceso;
	image_index = 0;
	}
	interacted = 0;
}



#endregion