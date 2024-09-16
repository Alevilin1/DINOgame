//Aumentando em 30%
image_xscale = escala_x  * 1.3

//Aumentando em 30%
image_yscale = escala_y * 1.3


//Se eu tiver dinheiro e a arma não foi comprada
if(global.coletavel >= preco and global.armabloqueada){
	
	
	//Tiro o dinheiro de acordo com o preço
	global.coletavel-=preco
	
	//Desbloqueio a arma
	global.armabloqueada = false
	
	instance_create_layer(x-10,y+45,"Exp",objPeixelojaexp)

}

//Se a arma já estiver desbloqueada
if(global.armabloqueada == false){
	
	//Posso equipar e desequipar 
	global.armado = !global.armado
	
		//Debug diferenciado
		if(global.armado == true){
			show_debug_message("Equipei")
		}else{
			show_debug_message("Não Equipei")
		}
}