inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;
itemRemove = -1;
slotRemove = -1;
is_hover = false;
//other.inventoryHover = -1;

mouseOver = function(){

	slotHover = -1;
	inventoryHover = -1;
	//getmouselocation
	 var mx = mouse_x;
	 var my = mouse_y;


	with(O_Inventory){

	if (point_in_rectangle(
		mx,
		my,
		x-6,
		y-6,
		x-6 + 12 + rowLenght*36,
		y-6 +12+(((inventory_Slots-1) div rowLenght)+1)*36
		)){
			
			for (var i = 0; i <inventory_Slots;i+=1){
			
				var xx = x + (i mod rowLenght) * 36 +2;
				var yy = y + (i div rowLenght) * 36 +2;
				
				if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32)){
					other.slotHover = i;
					other.inventoryHover = id;
					//show_debug_message("ishover");
					draw_sprite(Sprite_Objects_Tools,i,mouse_x-20,mouse_y-20);
					draw_text(16,32,inventory_name);
					
					is_hover = true;
				} 
			
			}
	}else{is_hover = false; //show_debug_message("nothover");
		}


	}
}
	
stateFree = function(){
	mouseOver();
	if(mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1){
		//drag state
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
		}
	//if(mouse_check_button(mb_right)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1){
		//remove state
		//state = stateRemove;
		//itemRemove = inventoryHover.inventory[slotHover];
		//slotRemove = slotHover;
	//}
} 
stateDrag = function(){
	mouseOver();
	if(!mouse_check_button(mb_left)){
		if(slotHover != -1) InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover)
		state = stateFree;
		itemDrag = -1;
		inventoryDrag = -1;
		slotDrag = -1;
		}
}

//stateRemove = function(){
	//mouseOver();
	//if(!mouse_check_button(mb_right)){
	//	if(slotHover != -1) InventoryRemove(itemRemove,slotRemove)
	//	state = stateFree;
	//	itemRemove = -1;
	//	slotRemove = -1;
	//	}
//}
state = stateFree;