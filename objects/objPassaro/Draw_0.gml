//Desenhando a sí mesmo
draw_self()

//Se tomar tiro
if(alpha > 0){
	
	//Fica branco
	gpu_set_fog(1,c_white,0,0)
	draw_sprite_ext(sprPassaro,image_index,x,y,image_xscale,image_yscale,1,c_white,alpha)
	
	 //Resetando fog, para não ficar na room
	gpu_set_fog(0,c_white,0,0)
	
}

