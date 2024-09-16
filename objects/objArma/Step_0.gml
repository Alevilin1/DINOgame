if(objDino.arma == true){ //Se o personagem tiver arma
	
	CliqueEsquerdo = mouse_check_button_pressed(mb_right)

	
	
		x = objDino.x + 10
		y = objDino.y + 5
		
		var _direcao = point_direction(x,y,mouse_x,mouse_y)
		image_angle = _direcao
		
		
		var _intervalo  = _direcao == clamp(_direcao,90,270)
		
		if(_intervalo){
			image_yscale = -2
		}else{
			image_yscale = 2
		}
		
	//Debug
	//show_debug_message(TempodoProximoTiro)

	if(TempodoProximoTiro > 0){ //Se o tempo do proximo tiro for maior do que 0
		TempodoProximoTiro -= 1 //Vai decrementar o tempo
	}


	//Se clique esquerdo e tempo do proximo tiro for menor ou igual a zero
	if(CliqueEsquerdo and TempodoProximoTiro <=0){
	
		//Se atirar, a arma vai para cima
		image_angle+=20
		
		
		var _pitch = random_range(0.5,0.7)
		
		//Som de tiro
		audio_play_sound(SomTiro,1,0,,,_pitch)
		
		
		//objArma.x + 20
		//objArma.y - 5
		//Atira
		var _xx = x + lengthdir_x(7,_direcao)
		var _yy = y + lengthdir_y(-3,_direcao)
		var tiro = instance_create_layer(_xx, _yy, "Tiro", objTiro)
		tiro.speed = 7
		tiro.direction = _direcao
		
		
	
		//Reinicia o timer
		TempodoProximoTiro = TempoTiro
	
	}else if(global.morte == true){ //Se o personagem morrer
		
			//A arma gira
			image_angle+=3
		
			//A arma desce
			y-=5
		}else{
			//Se não estiver atirando e nem morrendo
			image_angle = _direcao //A imagem se mexe de acordo com a direção do mouse
		}
	
}

