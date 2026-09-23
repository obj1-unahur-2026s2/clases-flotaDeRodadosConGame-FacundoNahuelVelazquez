import example.*

class Dependencia {
	var flota = []
	var cantidadDeEmpleados

	method agregarAFlota(unRodado) {
		flota.add(unRodado)
	}
	method quitarDeFlota(unRodado) {
		flota.remove(unRodado)
	}

	method pesoTotalFlota() = flota.sum { r => r.peso() }

	method estaBienEquipada() = flota.size() >= 3 && flota.all { r => r.velocidadMaxima() >= 100 }

	method capacidadTotalEnColor(unColor) =
		flota.filter { r => r.color() == unColor }.sum { r => r.capacidad() }

	method colorDelRodadoMasRapido() = flota.max { r => r.velocidadMaxima() }.color()

	method capacidadFaltante() = cantidadDeEmpleados - flota.sum { r => r.capacidad() }

	method esGrande() = cantidadDeEmpleados >= 40 && flota.size() >= 5
}