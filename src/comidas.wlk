import roque.*
import wollok.game.*

object manzana {
	method image() = "manzana.png"
	
	method energia() = 80
	
	method teChoco(persona){
		persona.agarraLaComida(self)
		game.removeVisual(self)
	}
}

object alpiste {
	method image() = "alpiste.png"
	
	method energia() = 5
	
	method teChoco(persona){
		persona.agarraLaComida(self)
		game.removeVisual(self)
	}
}
