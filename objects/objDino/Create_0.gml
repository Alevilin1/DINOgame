image_xscale = 2
image_yscale = 2
velx = 4
velJump = 8
velv = 4
grav = 0.25



arma = global.armado;


if(arma == true){
	instance_create_layer(x,y,"Tiro",objArma)
}