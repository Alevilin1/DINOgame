pular = keyboard_check_pressed(vk_space)
pularandroid = mouse_check_button_pressed(mb_left)
velv += grav

jumpSound = choose(Somdepulo1,Somdepulo2,Somdepulo3,Somdepulo4,Somdepulo5,Somdepulo6,Somdepulo7)


//Personagem colidindo com o chao
colisao = place_meeting(x,y + velv,objChao)
sprite_index = global.equipado

//Se o personagem colidir com o chao
if(colisao){
	//Ele trava no chão
	velv = 0
}


if(os_type == os_android or os_type == os_ios){
if(pularandroid and colisao){
	
		//Ele pula
		velv-= velJump
	
		//Som de pulo
		//audio_play_sound(Som3,1,0, , ,0.7)
	
	}
	
}

//Se apertar espaço e estiver no chão
if(pular and colisao){
	//Ele pula
	velv-= velJump
	
	//Som de pulo
	//audio_play_sound(Som3,1,0, , ,0.7)
	audio_play_sound(jumpSound,1,0)
	
}

if(!colisao){
	image_index = 2
}else{
	
}

if(global.morte == true){
	
	//Sprite de morte
	sprite_index = sprDinodeath
	//Pulando (Animação de morte)
	y-=4
	//Girando (Animação de morte)
	image_angle+=3
}



y+=velv		

