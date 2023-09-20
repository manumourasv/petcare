/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

script_execute(estado);

//MOVIMENTACAO
//definindo teclas de movimentação

/*
if keyboard_check(vk_left)
{
    x = x - 2;
}
if keyboard_check(vk_right)
{
    x = x + 2;
}
if keyboard_check(vk_up)
{
    y = y - 2;
}
if keyboard_check(vk_down)
{
    y = y + 2;
}*/

/*
direita = keyboard_check(vk_right);
cima = keyboard_check(vk_up);
esquerda = keyboard_check(vk_left);
baixo = keyboard_check(vk_down);


//COLISÃO
hveloc = (direita - esquerda) * veloc;

//colisão horizontal
if place_meeting(x + hveloc, y, obj_colisao){
	while !place_meeting(x + sign(hveloc), y, obj_colisao){
		x += sign(hveloc);
	}	
	
	hveloc = 0;
}

//x += hveloc;

vveloc = (baixo - cima) * veloc;

//colisão vertical
if place_meeting(x, y + vveloc, obj_colisao){
	while !place_meeting(x, y + sign(vveloc), obj_colisao){
		y += sign(vveloc);
	}
	
	vveloc = 0;
}

//y += vveloc;



if (hveloc != 0 or vveloc != 0) {
	direcao = point_direction(0, 0, hveloc, vveloc);
	moveX = lengthdir_x(veloc, direcao);
	moveY = lengthdir_y(veloc, direcao);
	
	x += moveX;
	y += moveY;
	
	//MUDAR SPRITES
	
	//mudando sprite p movimentação
	switch(direcao){
		case 0:
			sprite_index = spr_cachorro_andando_direita;
		break;
		case 90:
			
		break;
		case 180:
			sprite_index = spr_cachorro_andando_esquerda;
		break;
		case 270:
			
		break;
		default:
		break;
	}
}else{	
	//mudando sprite p parado
	switch(direcao){
		case 0:
			sprite_index = spr_cachorro_parado_direita;
		break;
		case 90:
			
		break;
		case 180:
			sprite_index = spr_cachorro_parado_esquerda;
		break;
		case 270:
			
		break;
		default:
		break;
	}
}*/




