draw_self()

draw_set_font(Fonte1)


//Variavel para mostrar pontos como numeros inteiros
//O global.pontuacao acrescenta pontos quebrados, mas aparece na tela para o jogador como numero inteiro
var _pontos = round(global.pontuacao)
draw_text(20,20,"Pontuação: " + string(_pontos))

//Desenhando nivel
var _meio = room_width
draw_text(_meio,20,"Nivel: " + string(global.nivel))

draw_set_font(-1)

//Desenhando sprite do coletavel
draw_sprite_ext(sprPeixeinfo,0,40,80,2,2,1,c_white,1)

draw_set_font(Fonte3)

//Texto do coletavel
draw_text(75,70,global.coletavel)


draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)