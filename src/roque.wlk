import wollok.game.*
import pepita.*
import ciudades.*
import comidas.*

object roque {
	var property position = game.at(1,1)
	var queComidaTengo= "ninguna"
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion) {
			self.position(nuevaPosicion)
	}
	
	method agarraLaComida(comida){
		if(queComidaTengo=="ninguna"){
			queComidaTengo=comida
		}else{
			game.addVisualIn(queComidaTengo, game.at(0.randomUpTo(9),0.randomUpTo(9)))
			queComidaTengo=comida
		}
	}
	
	method daDeComer(animal){
		if(queComidaTengo!="ninguna"){
			animal.come(queComidaTengo)
			game.addVisualIn(queComidaTengo, game.at(0.randomUpTo(9),0.randomUpTo(9)))
			queComidaTengo="ninguna"
		}
	}
}
