//voltando alpha ao normal
alpha = lerp(alpha,0,0.1)

//Voltando xscale e yscale ao tamanho inicial
image_xscale = lerp(image_xscale,escala_x,0.1)
image_yscale = lerp(image_yscale,escala_y,0.1)

if(global.morte == true) exit;

x-=6 + global.nivel

if(vida <= 0){
	instance_destroy()
}

if(x < -32){
	instance_destroy()
}