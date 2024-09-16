if(file_exists("save.sav")){
	
	ini_open("save.sav")
	global.armado = ini_read_real("Personagem","Armado",global.armado)
	global.armabloqueada = ini_read_real("Personagem","Arma",global.armabloqueada)
	global.coletavel = ini_read_real("Personagem","Coletavel",global.coletavel)
	ini_close()	
}