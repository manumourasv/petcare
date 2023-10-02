/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _grid = global.grid_profundidade;
var _num = instance_number(par_objetos);

ds_grid_resize(_grid, 2, _num);


//varredura do array
var i = 0;
with(par_objetos){
	_grid[# 0, i] = id;
	_grid[# 1, i] = y;
	i++;
}

//organizando a coluna Y do menor para o maior valor 
ds_grid_sort(_grid, 1, true);

//looping para desenhar os itens na ordem de profundidade
for (var i = 0; i < ds_grid_height(_grid); i++){
	var _inst = _grid[# 0, i];
	with(_inst){
		event_perform(ev_draw, 0);
	}
}



