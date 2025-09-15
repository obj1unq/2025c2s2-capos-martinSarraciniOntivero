object rolando {
    var property   mochila = []
    var capacidadMochila = 2
    var property artefactosTotales = []
    method recolectar(artefacto){
        self.validarTamañoDeMochila(mochila.size())
        mochila.add(artefacto)
    }
    method capacidadMochila(tamaño){  capacidadMochila = tamaño}
    
    method validarTamañoDeMochila(tamaño){
        return if(tamaño >= capacidadMochila){
            self.error("no puede agarrar el artefacto por falta de espacio en mochila")
        }
    }
    method llegarA(lugar){
        lugar.almacenarArtefactos()
    }
    method posesiones(){
        artefactosTotales = artefactosTotales + self.mochila() + castillo.almacenDeArtefactos()
        return artefactosTotales
    }
    method rolandoPosee
}


object espadaDelDestino{
    
}

object libroDeHechizos{

}

object collarDivino{

}

object escudoDeAceroValytio{

}

object castillo{
    var property almacenDeArtefactos = [] 
    method almacenarArtefactos(){
        almacenDeArtefactos = almacenDeArtefactos + rolando.mochila()
        rolando.mochila().clear()
    }

}
