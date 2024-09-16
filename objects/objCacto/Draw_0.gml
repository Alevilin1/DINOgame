draw_self()

if(alpha > 0){
	gpu_set_fog(1,c_white,0,0)	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,1,c_white,alpha)
	gpu_set_fog(false,0,0,0)
}