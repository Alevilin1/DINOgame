//Imagem vermelha
image_index = 0

if(global.armabloqueada == false){
	image_index = 1
}


//Usando lerp para voltar ao tamanho original 
//Image xscale do lerp é o valor atual e o escala_x é o inicial
image_xscale = lerp(image_xscale, escala_x, 0.1) 
image_yscale = lerp(image_yscale, escala_y, 0.1)


//Usando lerp para voltar ao tamanho original
//Texto_x do lerp é o valor atual e o 1 é 0 valor inicial
texto_x = lerp(texto_x,1, 0.1) 
texto_y = lerp(texto_y,1, 0.1)

