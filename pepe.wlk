object pepe {
    var categoria = gerente
    var tipoDeBonoPorResultado   = bonoProcentaje
    var tipoDeBonoPorPresentismo = bonoNormal
    var diasQueFalto = 0
	method sueldo() {
      return self.neto() + self.bonoResultado() + self.bonoPresentismo()
    }

    method cuantosFalto() {
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

object cadete {
  method neto() {
    return 20000
  }
}

object bonoProcentaje {
  method bono(empleado) {
    return empleado.neto() * (10/100)
  }
}

object bonoMontoFijo {
  method bono(empleado) {
    return 800
  }
}

object bonoNulo {
  method bono(empleado) {
    return 0
  }
}

object bonoNormal {
  method bono(empleado) {
    if (empleado.cuantosFalto() == 0) {
      return 2000
    } else {
      if (empleado.cuantosFalto() == 1) {
        return 1000
      } else {
        return 0
      }
    }
  }
}

object bonoAjuste {
  method bono(empleado) {
    
  }
}