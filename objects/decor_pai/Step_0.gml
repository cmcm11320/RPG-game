/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;



//transparente ao passar por tras

if(transparente){
	
	if(instance_exists(Player)){

	if(Player.y <y){
		if(point_in_rectangle(Player.x,Player.y, bbox_left-10, bbox_top-25, bbox_right+10, bbox_bottom)){
			image_alpha = lerp(image_alpha,.4,.05);	
		}
		else{
			image_alpha = lerp(image_alpha,1,.05);	
		}
	}
	
}
	
}

