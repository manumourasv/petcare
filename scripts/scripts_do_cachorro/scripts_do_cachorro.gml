// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_cachorro_andando(){
	//movimentação
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

	vveloc = (baixo - cima) * veloc;

	//colisão vertical
	if place_meeting(x, y + vveloc, obj_colisao){
		while !place_meeting(x, y + sign(vveloc), obj_colisao){
			y += sign(vveloc);
		}
	
		vveloc = 0;
	}


	//calculando a direção
	if (hveloc != 0 or vveloc != 0) {
		parado = false;
		
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
		parado = true;
		
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
	}
}

function scr_cachorro_sentado(){
	
}