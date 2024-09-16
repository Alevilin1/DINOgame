//Numero aleatorio do Y
var aleatorio = random_range(150,288)

//Criando o coletavel
instance_create_layer(832,aleatorio,"Coletavel",ObjPeixe)

//Tempo de criação inicial
var _tempo = 60 * random_range(8,12)


if(global.nivel > 9){ //Se o nivel for maior que 9
	
	//Diminui o tempo de criação do peixe
	_tempo = 60 * random_range(4,6)
}

//Tempo do alarme
alarm[1] = _tempo