//Voltando xscale e yscale para o valor inicial
image_xscale = lerp(image_xscale,escala_x,0.1)
image_yscale = lerp(image_yscale,escala_y,0.1)


//Voltando alpha ao normal depois do dano
alpha = lerp(alpha,0,0.1)


if(x < -32){
	instance_destroy()
}

if(global.morte == true) exit;

if(vida <= 0){
	instance_destroy()
}

x-=4 + global.nivel


