// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State_Machine() constructor{

//init state

static inicio = function(){};

//change state

static mid = function(){};

//End state

static ending = function(){};

}



function inicia_estado(_estado){

estado_atual = _estado;

estado_atual.inicio();

}

function mid_estado(){

estado_atual.mid();	
}

function change_estado(_estado){

estado_atual.ending();

estado_atual = _estado;

estado_atual.inicio();

}


function define_sprite(_dir, _sprite_right,_sprite_left,_sprite_back,_sprite_front){
	
	switch(_dir){
		case 0: _sprite = _sprite_right; break;
		case 1: _sprite = _sprite_back; break;
		case 2: _sprite = _sprite_left; break;
		case 3: _sprite = _sprite_front; break;
	}
	
	return _sprite;
}