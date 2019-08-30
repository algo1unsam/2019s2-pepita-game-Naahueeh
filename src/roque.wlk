import wollok.game.*
import pepita.*

object roque {
	var property position = game.at(1,1)
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion) {
			self.position(nuevaPosicion)
	}
	
}
