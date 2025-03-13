draw_sprite_stretched(
//desenha o fundo do inventario e coloca os slots

S_inventory,
0,
x-6,
y-6,
12+rowLenght*36,
12+(((inventory_Slots-1) div rowLenght)+1)*36
);

for (var i = 0; i<inventory_Slots;i+=1){
	//desenha o hover nos slots

	var xx = x + (i mod rowLenght) *36 +2;
	var yy = y + (i div rowLenght) *36 +2;
	var hover = (O_MouseControl.inventoryHover == id) && (O_MouseControl.slotHover = i);
	draw_sprite(Slot,hover,xx,yy);
	//draw_sprite(Slot,0,xx,yy);
	if (inventory[i] != -1)
	{
		//desenha os hover while drag nos itens
		var alpha = 1.0;
		if(O_MouseControl.inventoryDrag == id) && (O_MouseControl.slotDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
		draw_sprite(Sprite_Objects_Tools,inventory[i],xx,yy);
		
		draw_set_alpha(1.0);	
			
	}

}