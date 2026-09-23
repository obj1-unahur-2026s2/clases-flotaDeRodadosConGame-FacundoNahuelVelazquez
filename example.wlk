class Rodado {
	method capacidad()
	method velocidadMaxima()
	method peso()
	method color()
}

class Corsa inherits Rodado {
	var color

	override method capacidad() = 4
	override method velocidadMaxima() = 150
	override method peso() = 1300
	override method color() = color
}

class Kwid inherits Rodado {
	var tanqueAdicional = false

	method ponerTanqueAdicional() {
		tanqueAdicional = true
	}
	method sacarTanqueAdicional() {
		tanqueAdicional = false
	}

	override method capacidad() = if (tanqueAdicional) 3 else 4
	override method velocidadMaxima() = if (tanqueAdicional) 120 else 110
	override method peso() = 1200 + (if (tanqueAdicional) 150 else 0)
	override method color() = "azul"
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}
object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}
object motorPulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}
object motorBataton {
	method velocidadMaxima() = 80
	method peso() = 500
}

class Trafic inherits Rodado {
	var interiorActual
	var motorActual

	method cambiarInterior(unInterior) {
		interiorActual = unInterior
	}
	method cambiarMotor(unMotor) {
		motorActual = unMotor
	}

	override method capacidad() = interiorActual.capacidad()
	override method velocidadMaxima() = motorActual.velocidadMaxima()
	override method peso() = 4000 + interiorActual.peso() + motorActual.peso()
	override method color() = "blanco"
}

class AutoEspecial inherits Rodado {
	var capacidadPropia
	var velocidadMaximaPropia
	var pesoPropio
	var colorPropio

	override method capacidad() = capacidadPropia
	override method velocidadMaxima() = velocidadMaximaPropia
	override method peso() = pesoPropio
	override method color() = colorPropio
}