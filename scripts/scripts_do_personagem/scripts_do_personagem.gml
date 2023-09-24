function scr_personagem_andando(){
	//MOVIMENTACAO

	//definindo teclas de movimentação
	direita = keyboard_check(ord("D"));
	cima = keyboard_check(ord("W"));
	esquerda = keyboard_check(ord("A"));
	baixo = keyboard_check(ord("S"));


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
	

	//CALCULANDO A DIRECAO
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
				sprite_index = spr_player_andando_direita;
			break;
			case 90:
				sprite_index = spr_player_andando_cima;
			break;
			case 180:
				sprite_index = spr_player_andando_esquerda;
			break;
			case 270:
				sprite_index = spr_player_andando_baixo;
			break;
			default:
			break;
		}
	}else{	
		//mudando sprite p parado
		switch(direcao){
			case 0:
				sprite_index = spr_player_parado_direita;
			break;
			case 90:
				sprite_index = spr_player_parado_cima;
			break;
			case 180:
				sprite_index = spr_player_parado_esquerdo;
			break;
			case 270:
				sprite_index = spr_player_parado_baixo;
			break;
			default:
			break;
		}
	}
}