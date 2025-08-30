object pepe {
    var categoria = gerente
    var tipoDeBonoPorResultado   = bonoPorcentaje
    var tipoDeBonoPorPresentismo = bonoNormal
    var diasQueFalto = 0
	method sueldo() {
      return self.neto() + self.bonoResultado() + self.bonoPresentismo()
    }

    method cuantosFalto(dias) {
      return diasQueFalto
    }

    method falto(dias) {
      diasQueFalto = dias
    }

    method neto() {
      return categoria.neto()
    }

    method bonoResultado() {
      return tipoDeBonoPorResultado.bono(self)
    }

    method bonoPresentismo() {
      return tipoDeBonoPorPresentismo.bono(self)
    }
}

object gerente {
  method neto() {
    return 15000
  }
}

object bonoProcentaje {
  method bono(empleado) {
    return empleado.neto() * (10/100)
  }
}

object bonoNormal {
  return 
}