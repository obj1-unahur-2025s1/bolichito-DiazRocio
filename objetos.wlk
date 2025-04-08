object bolichito {
  var vidriera
  var mostrador
  method esBrillante() = vidriera.material().brilla() and mostrador.material().brilla()
  method esMonocromatico() = vidriera.color() == mostrador.color()
  method estaEquilibrado() = vidriera.peso() < mostrador.peso()
  method tieneDeColor(color) = vidriera.color() == color or mostrador.color() == color
  method sePuedeMejorar() = self.esMonocromatico() or not self.estaEquilibrado()
  method puedeOfrecerleAlgoA(persona) = persona.leGusta(vidriera) or persona.leGusta(mostrador)
}

object rosa {
  method leGusta(elemento) = elemento.peso() <= 2000
}

object estefania{
  method leGusta(elemento) = elemento.color().esFuerte()
}

object luisa {
  method leGusta(elemento) = elemento.material().brilla()
}

object juan {
  method leGusta(elemento) {
    return
    not elemento.color().esFuerte() 
    or
    elemento.peso().between(1200, 1800)
  }   
}

object rojo{
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object pardo{
  method esFuerte() = false
}

object celeste{
  method esFuerte() = false
}

object lino{
  method brilla() = false
}

object cobre{
  method brilla() = true
}

object vidrio{
  method brilla() = true
}

object cuero{
  method brilla() = false
}

object madera{
  method brilla() = false
}

object remera{
  method peso() = 800
  method color() = rojo
  method material() = lino
}

object pelota{
  method peso() = 1300
  method color() = pardo
  method material() = cuero
}

object biblioteca{
  method peso() = 8000
  method color() = verde
  method material() = madera
}

object munieco{
  var peso = 0
  method peso() = peso
  method peso(nuevoPeso) {
    peso = nuevoPeso
  }
  method color() = celeste
  method material() = vidrio
}

object placa{
  var peso = 0
  var color = null
  method peso() = peso
  method peso(nuevoPeso) {
    peso = nuevoPeso
  }
  method color() = color
  method color(nuevoColor) {
    color = nuevoColor
  }
  method material() = cobre
}

object arito {
  method color() = celeste
  method material() = cobre
  method peso() = 180
}

object cajita {
  var contenido = 
  method color() = rojo
  method material() = cobre
  method peso() = 400 + contenido.peso()
}