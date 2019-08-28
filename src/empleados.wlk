object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var totalDeuda = 0
	
	method gastar(cantidad) {
		if (dinero > cantidad) { dinero -= cantidad }
		else if (dinero < cantidad) { 
			totalDeuda += cantidad - dinero
			dinero = 0
		}
	}
	method totalDeuda () {
		return (totalDeuda)
	}
	method totalCobrado () {}
	
	method totalDinero () {
		return (dinero)
	}
	method cobrarSueldo () { dinero += sueldo 
	if (dinero >= totalDeuda) {
			dinero -= totalDeuda
			totalDeuda = 0			
		} else { 
			totalDeuda -= dinero
			dinero = 0
		}
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var totalCobrado = 0
	var totalDeuda = 0
	
	method gastar(cantidad) {
		if (dinero > cantidad) { dinero -= cantidad }
		else if (dinero < cantidad) { 
			totalDeuda += cantidad - dinero
			dinero = 0
		}
	}
	method totalDeuda () {
		return (totalDeuda)
	}
	method totalDinero () {
		return (dinero)
	}
	method totalCobrado () { return totalCobrado
	}
	
	method cobrarSueldo() {
		dinero += self.sueldo ()
		totalCobrado += self.sueldo ()
		
		if (dinero >= totalDeuda) {
			dinero -= totalDeuda
			totalDeuda = 0			
		} else { 
			totalDeuda -= dinero
			dinero = 0
		}
	}
	method cobrarSueldoProfesor() {
		var aDescontar
		dinero += self.sueldo()
		aDescontar = totalDeuda.min(dinero)
		totalDeuda -= aDescontar
		dinero -= aDescontar
		
		}
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
