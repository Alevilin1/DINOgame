//Numero aleatorio do Y
var aleatorio = irandom_range(320,308)

//Tempo inicial para gerar outro cacto ou passaro
var _tempo = 60 * irandom_range(2,4)

//Se o nivel for maior que 3
if(global.nivel >= 3){
	//O padrao vai mudar para escolher um objeto entre os dois
	Padrao = choose(objCacto,objPassaro,objPassaro2)
	
		//Se o objeto escolhido for o passaro
		if(Padrao == objPassaro or Padrao == objPassaro2){
			//Vai aumentar o tamanho do Y no qual ele pode aparecer
			var aleatorio = irandom_range(288,260) 
		}else if(Padrao == objCacto){
			var aleatorio = irandom_range(320,308)
		}else{
			var aleatorio = irandom_range(320,308)
		}	
}

//Se global.nivel for maior ou igual a 5, o tempo vai ser entre 2 a 3 segundos
if(global.nivel >= 5) _tempo = 60 * random_range(1.5,3);

//Se global.nivel for igual a 10, o tempo vai ser entre 1 a 2 segundos
if(global.nivel == 10) _tempo = 60 * random_range(1,2)



//Criando a instancia
instance_create_layer(672,aleatorio,"Inimigos",Padrao)

//Tocando o alarme 
alarm[0] = _tempo
