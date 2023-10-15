/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

var xx = 0;
var yy = gui_altura - 200;

//DESENHO DO RETANGULO
draw_set_color(c_black);
draw_rectangle(xx, yy, gui_largura, gui_altura, 0);


//DESENHO DO TEXTO
draw_set_font(ft_dialogo);
draw_set_color(c_white);

var texto_atual = string_copy(texto[index], 1, index_letra);

if(index_letra < string_width(texto[index])){
	index_letra = index_letra + 0.5;
}
draw_text((gui_largura/2) - (string_width(texto[index]))/2, yy + 20, texto_atual);


//draw_text((gui_largura/2) - (string_width(texto[index]))/2, yy + 5, texto[index]);


//CONFERINDO INICIO
if(global.inicio == true){
	draw_set_font(ft_dialogo_tutorial);
	draw_text(gui_largura - 230, gui_altura - 50, "Pressione 'E'");
}




