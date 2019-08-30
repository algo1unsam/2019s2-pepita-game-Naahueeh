import ciudades.*
import wollok.game.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image(){
		if (energia>100){
			return "pepita-gorda-raw.png"
		}else{
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
		self.image()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			if(energia>=self.energiaParaVolar(position.distance(unaCiudad.position()))){
				ciudad = unaCiudad
			}
		}else{
			game.say(self, "Ya estoy en "+ ciudad)
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		var energiaRequerida=self.energiaParaVolar(position.distance(nuevaPosicion))
		if(energia<energiaRequerida){
			game.say(self, "Dame de Comer primero")
		}else{
			energia -= energiaRequerida
			self.position(nuevaPosicion)
			self.image()		
		}

	}	
	
	method teChoco(persona){
		persona.daDeComer(self)
	}
	
}
