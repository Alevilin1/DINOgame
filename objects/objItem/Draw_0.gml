draw_self()
draw_set_halign(1)
draw_set_font(Fonte2)

if(Skin == global.equipado){
draw_text(x,y-60,"Equipado")
}

if(!desbloqueado){
	draw_sprite_ext(sprPeixeinfo,0,x-10,y+47,1,1,0,c_white,1)
	draw_set_font(Fonte4)
	draw_text(x+15,y+38,preco)
	draw_set_font(-1)
}
draw_set_font(-1)
draw_set_halign(-1)
