if(file_exists("save.sav")) file_delete("save.sav")


ini_open("save.sav")
ini_write_real("Personagem","Armado",global.armado)
ini_write_real("Personagem","Coletavel",global.coletavel)
ini_write_real("Personagem","Arma",global.armabloqueada)
ini_close()

