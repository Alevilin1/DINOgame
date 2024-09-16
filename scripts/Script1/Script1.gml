randomize()

global.armabloqueada = true;

global.armado = false;

global.coletavel = 0

global.nivel = 1

global.desbloqueado = [true,false]

global.morte = false

global.pontuacao = 0

global.equipado = sprDinowalk

function loadArray(){
	
	//Se o arquivo existe
	if(file_exists("save1.txt")){
		
		//Reseta o global.desbloqueado, para não incrementar junto ao que já tem
		global.desbloqueado = []
		
		//Abrindo o arquivo
		var file = file_text_open_read("save1.txt")
		
		//Se o arquivo ainda não terminou de ser lido, ele repete
		while(!file_text_eof(file)){
			
			//Lendo o arquivo
			var value = file_text_read_real(file)
			
			//Debug
			//show_message("Lido: " + string(file));
			
			//Colocando o Valor (Valor lido no value) no global.desbloqueado
			array_push(global.desbloqueado,	value)
			
			//Pulando uma linha, para ler o que está em baixo
			file_text_readln(file)
			
			//Debug
			//show_message(global.desbloqueado)
			
			
		}	//Fechando o arquivo
			file_text_close(file)
		
	}

}
	
function saveArray(){
	
	//Se o arquivo já existe, deleta o arquivo
	if(file_exists("save1.txt")) file_delete("save1.txt")

	//Variavel do arquivo
	var file;
	//Abrindo o arquivo para escrita
	file = file_text_open_write("save1.txt")
	
	//Salvando a merda do array
	//Enquanto I for menor que o tamanho da array
	for( var i = 0; i < array_length(global.desbloqueado); i++){ //Adiciona mais 1 no I
			
			//Escrevendo no arquivo file a array global.desbloqueado
			file_text_write_real(file,global.desbloqueado[i])
			
			//Debug
			//show_message(global.desbloqueado)
			
			//Escrevendo na proxima linha
			file_text_writeln(file)
			

	}	//Fechando arquivo
		file_text_close(file)
	
}
	

function morte(){
	
	//Se eu já morri, eu não preciso morrer dnv
	if(global.morte == true) exit;
	

	
	//Morreu :(
	global.morte = true
	
	alarm[0] = 60
	
	
	
	
}
	