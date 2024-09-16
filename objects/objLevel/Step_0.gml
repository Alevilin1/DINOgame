global.pontuacao+=0.1

//Enquanto o nivel for menor que 9
if(global.nivel <= 9){
	
	//Se a pontuação for maior ou igual a 100 vezes o nivel
	if(global.pontuacao >= 100 * global.nivel){
		//Adiciona mais um nivel
		global.nivel++
		audio_play_sound(Som2,1,0)
	}

	//Background vai se movimentar mais rapido a cada nivel
	layer_hspeed("BackgroundsArvores", -1 - global.nivel)
	//Background vai se movimentar mais rapido a cada nivel
	layer_hspeed("BackgroundsAzul", -1 - global.nivel)
	
}

//Se o personagem morrer
if(global.morte == true){
	//O background para de se movimentar
	layer_hspeed("BackgroundsArvores",0)
}

