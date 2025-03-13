
function Inventory_search(rootObject, itemType){

	for(var i =0; i < inventory_Slots; i +=1){

		if(rootObject.inventory[i] = itemType){
			return(i);
	
		}

	}
	return(-1);

}

function InventoryRemove(rootObject,itemType){
	
	var _slot = Inventory_search(rootObject,itemType);
	if(_slot != -1){
		with (rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function InventoryAdd(rootObject,SelectedItem){
	var _slot = Inventory_search(rootObject,-1);
	if(_slot != -1){
		with (rootObject) inventory[_slot] = SelectedItem;
		return true;
	}
	else return false;

}

function InventorySwap(ObjectFrom,slotFrom,ObjectTo,SlotTo){

	var _itemFrom = ObjectFrom.inventory[slotFrom];
	ObjectFrom.inventory[slotFrom] = ObjectTo.inventory[SlotTo];
	ObjectTo.inventory[SlotTo] = _itemFrom;

}
