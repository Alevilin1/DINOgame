if(global.morte == true) exit;

x-= 4 + global.nivel

//O image_alpha do objeto vai diminuindo
//Image_alpha até 0 e a velocidade 0.2
image_alpha = lerp(image_alpha, 0, 0.4)

//Para destruir ao sumir
if(image_alpha <= 0.1){ //Se o image_alpha for menor ou igual a 0.1
	instance_destroy() //Destroi
}