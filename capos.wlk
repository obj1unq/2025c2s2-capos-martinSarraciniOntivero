object rolando {
    var property   mochila = #{}
    var capacidadMochila = 2
    var property hogar = castillo
    var property historialArtefactos = []
    var property poderPelea = 0
    var property poderBase = 5
    var cantPeleas = 0


    method cantPeleas(){ return cantPeleas}
    method recolectar(artefacto){
         historialArtefactos.add(artefacto)
        self.validarTamañoDeMochila(mochila.size())
        mochila.add(artefacto)
    }

    method capacidadMochila(tamaño){  capacidadMochila = tamaño}
    method poderPelea(valor){ poderPelea = valor}
    method hogar(lugar){ hogar = lugar}
    method poderBase(valor){ poderBase = valor}
 

    method validarTamañoDeMochila(tamaño){
        return if(tamaño >= capacidadMochila){
            self.error("no puede agarrar el artefacto por falta de espacio en mochila")
        }
    }
    method llegarA(lugar){
        lugar.almacenarArtefactos()
    }
    method posesiones(){
        return mochila + hogar.almacenDeArtefactos()
        
    }
    method posee(artefacto){
        return self.posesiones().contains(artefacto)
    }
    method asignarPoderPelea(){
        mochila.forEach( {artefacto => artefacto.aumentarPoder(self)} )
    }
    method batalla(){
        poderPelea = 0
        cantPeleas = cantPeleas + 1
        self.asignarPoderPelea()
        poderBase = poderBase + 1
    }
}


object espadaDelDestino{
    var property poder = 0
    method aumentarPoder(personaje){
        if( personaje.cantPeleas() < 3){
            personaje.poderPelea(personaje.poderPelea())
        }else{
            personaje.poderPelea(personaje.poderPelea() / 2)
        }
    }
}


object libroDeHechizos{
    
}

object collarDivino{
    var property poder = 3
    method poder(valor){ poder = valor}
    method aumentarPoder(personaje){
       if(personaje.poderBase() > 6) {
           personaje.poderPelea(personaje.poderPelea() + poder + 1)
       }else{
              personaje.poderPelea(personaje.poderPelea() + poder)
       }
    }

}

object escudoDeAceroValytio{
    var property poder = 2
    method poder(valor){ poder = valor}
    method aumentarPoder(personaje){
        personaje.poderPelea(personaje.poderPelea() + poder)
    }
}

object castillo{
    var property almacenDeArtefactos = [] 
    method almacenarArtefactos(){
        almacenDeArtefactos = almacenDeArtefactos + rolando.mochila()
        rolando.mochila().clear()
    }

}
