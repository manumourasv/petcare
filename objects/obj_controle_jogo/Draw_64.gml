/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_color(c_red);
//draw_text(30, 30, "Felicidade: " + string(global.felicidade));

draw_set_color(-1);


switch(global.felicidade){
	case 1:
		draw_sprite(spr_coracao_branco, 0, 50, 50);
	break;
	case 2: 
		draw_sprite(spr_coracao_branco, 0, 50, 50);
		draw_sprite(spr_coracao_branco, 0, 86, 50);

	break; 
	case 3:
		draw_sprite(spr_coracao_branco, 0, 50, 50);
		draw_sprite(spr_coracao_branco, 0, 86, 50);
		draw_sprite(spr_coracao_branco, 0, 122, 50);
	break;
};



