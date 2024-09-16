//Se tiver coletavel e a skin estiver bloqueada
if(global.coletavel >= preco and desbloqueado == false){
	
	//Vai tirar o coletavel de acordo com o preço
	global.coletavel-= preco
	
	 //Só para garantir, vou deixar o desbloqueado do objeto como TRUE
	 desbloqueado = true
	
	//Vai deixar a skin desbloqueada no global.desbloqueado[indice]
	global.desbloqueado[indice] = true
	
	//Vai equipar a skin
	global.equipado = Skin
		
	
	//Debug
	//show_message("Indice: " + string(indice))
	//show_message(global.desbloqueado)
	//show_message(desbloqueado)	
}

//Se a Skin que eu clicar for diferente da que já está equipada e estiver desbloqueado
if(Skin != global.equipado and desbloqueado == true){ 
	global.equipado = Skin //Então vou equipar elá
	
	//Debug
	//show_message("Indice: " + string(indice))
	//show_message(global.desbloqueado)
	//show_message(desbloqueado)
}