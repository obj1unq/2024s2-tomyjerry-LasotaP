object tom {
	
	var energia = 50

	method comer(raton) {
		energia += self.energiaQueObtieneDe(raton)
	}
	
	method correr(distancia){
		energia -= self.energiaQueConsumePor(distancia)
	}
	
	method energiaQueObtieneDe(raton) {
	  return 12 + raton.peso()
	}

	method energiaQueConsumePor(distancia) {
	  return distancia / 2
	}

	method energia() {
	  return energia
	}

	method velocidadMaxima()  {
		return 5 + (energia / 10)
	}

	method puedeComer(distancia) {
	  return distancia/2 < energia
	}
	
	method quiereComer(raton,distancia) {
	  return self.puedeComer(distancia) and (self.energiaQueConsumePor(distancia) < self.energiaQueObtieneDe(raton))
	}

}

object jerry {
	var edad = 2
	method peso() {
	  return edad*20
	}

	method cumplir() {
	  edad += 1
	}
}

object nibbles {
	const pesoNibbles = 35
	method peso() {
	  return pesoNibbles
	}
}


