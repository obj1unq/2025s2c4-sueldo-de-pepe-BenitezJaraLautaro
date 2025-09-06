object pepe {
    var property categoria = cadete
    var property tipoDeBonoPorResultado   = bonoMontoFijo
    var property tipoDeBonoPorPresentismo = bonoNormal
    var property diasQueFalto = 0
	
    method sueldo() {
      return self.neto() + self.bonoResultado() + self.bonoPresentismo()
    }

    method categoria(_categoria) {
      categoria = _categoria
    }

    method diasQueFalto(_diasQueFalto) {
      diasQueFalto = _diasQueFalto
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

object sofia {
  var property categoria = cadete  
  var property tipoDeBonoPorResultados =  bonoMontoFijo
  var property diasQueFalto = 0 

  method sueldo() {
    return (self.neto() * 1.3) + self.bonoResultado()
  }
  
  method diasQueFalto(_diasQueFalto) {
    diasQueFalto = _diasQueFalto
  }

  method neto() {
    return categoria.neto()
  }

  method bonoResultado() {
    return tipoDeBonoPorResultados.bono()
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

object vendedor {//Es correcto esta forma?
  var neto = 16000

  method neto() {
    return neto
  }
  
  method activarAumentoPorMuchasVentas() {
    neto = neto * 1.25
  }

  method desactivarAumentoPorMuchasVentas() {
    neto = neto / 1.25
  }
}

object medioTiempo {
  var categoriaBase = cadete

  method categoriaBase() {
    return categoriaBase.neto() / 2 
  }
}


object bonoPorcentaje {
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
    if (empleado.diasQueFalto() == 0) {
      return 2000
    } else {
      if (empleado.diasQueFalto() == 1) {
        return 1000
      } else {
        return 0
      }
    }
  }
}

object bonoAjuste {
  method bono(empleado) {
    if (empleado.diasQueFalto() == 0) {
      return 100
    } else {
      return 0
    }
  }
}

object bonoDemagogico {
  method bono(empelado) {
    if (empelado.neto() < 18000) {
      return 500
    } else {
      return 300
    }
  }
}