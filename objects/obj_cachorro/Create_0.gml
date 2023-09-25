/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

randomize();

//variaveis para estado
estado = scr_cachorro_escolher_estado;
prox_estado = 0;

//variaveis para velocidade
hveloc = 0;
vveloc = 0;
veloc = 1.5;


dest_x = 0;		//direcao p onde o cachorro quer ir
dest_y = 0;
direcao = 270;

alarm[0] = 1;

sentado = false;

dist_aggro = 50;
dist_desaggro = 100;



/*
//variaveis para controlar movimentacao
direita = -1;
cima = -1; 
esquerda = -1;
baixo = -1;

//variavel de estado
parado = true;
sentar = 240;

//variaveis para velocidade
hveloc = 0;
vveloc = 0;

veloc = 3;

direcao = 270;

estado = scr_cachorro_andando;

//colisao = veloc + 2;*/




