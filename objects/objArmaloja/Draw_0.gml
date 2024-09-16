draw_self()
draw_set_font(Fonte4)
draw_set_halign(1)
draw_set_valign(1)



if(global.armabloqueada == true){
	draw_sprite(Peixe,0,x-10,y+45)
	draw_text(x+15,y+45,preco)
}


draw_set_font(-1)

if(global.armado){
	
	draw_set_font(Fonte1_2)
	draw_text(x,y-45,"Equipado")
	
	//Debug
	//show_message("Equipei")
}

if(global.armabloqueada == false and !global.armado){
	draw_set_font(Fonte1_2)
	draw_text(x,y-45,"Desequipado")
}

draw_set_halign(-1)
draw_set_valign(-1)
