#macro inventory_Slots 10
rowLenght = 5;
inventory = array_create(inventory_Slots, -1);
inventory_name = array_create(inventory_Slots, -1);
inventory_description = array_create(inventory_Slots, -1);
inventory_name_tag = array_create(inventory_Slots, -1);
aberto = 0;
i=0;
menu_trigger=0;
//xview = view_xview[0] + 100;
//yview = view_yview[0] + 100;
x = 100 + camera_get_view_x(view_camera[0]);
y = 100 + camera_get_view_y(view_camera[0]);




#region itens
vazio = 
{
	title: "Vazio",
	description: "É um espaço vazio",
	SpriteNumber: 0,
}
sword1 = 
{
	title: "Espada de Madeira",
	description: "É uma espada",
	SpriteNumber: 1,
}

#endregion
//inventory[0] = sword1.SpriteNumber;
//itemfoda = vazio;

