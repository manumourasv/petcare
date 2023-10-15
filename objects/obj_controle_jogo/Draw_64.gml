/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//draw_set_color(c_red);
//draw_text(30, 30, "Felicidade: " + string(global.felicidade));

draw_set_color(-1);

//DESENHO DA PONTUACAO
switch(global.felicidade){
	case 1:
		draw_sprite(spr_coracao_branco, 0, 50, 50);
		draw_sprite(spr_coracao_vazio, 0, 86, 50);
		draw_sprite(spr_coracao_vazio, 0, 122, 50);
	break;
	case 2: 
		draw_sprite(spr_coracao_branco, 0, 50, 50);
		draw_sprite(spr_coracao_branco, 0, 86, 50);
		draw_sprite(spr_coracao_vazio, 0, 122, 50);
	break; 
	case 3:
		draw_sprite(spr_coracao_branco, 0, 50, 50);
		draw_sprite(spr_coracao_branco, 0, 86, 50);
		draw_sprite(spr_coracao_branco, 0, 122, 50);
	break;
	
	default:
		draw_sprite(spr_coracao_vazio, 0, 50, 50);
		draw_sprite(spr_coracao_vazio, 0, 86, 50);
		draw_sprite(spr_coracao_vazio, 0, 122, 50);
	break;
};

//DESENHA NA GUI O QUE ESTÁ NO INVENTARIO
if(global.racao){
	draw_sprite(spr_racao, 0, 60, 110);
}

if(global.brinquedo){
	draw_sprite(spr_brinquedo, 0, 60, 150);
}

if(global.agua){
	draw_sprite(spr_pote_agua, 0, 60, 190);
}


