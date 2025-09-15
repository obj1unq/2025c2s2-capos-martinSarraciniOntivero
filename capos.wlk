object rolando {
    var property   mochila = []
    var capacidadMochila = 2
    var property hogar = castillo
    method recolectar(artefacto){
        self.validarTamañoDeMochila(mochila.size())
        mochila.add(artefacto)
    }
    method capacidadMochila(tamaño){  capacidadMochila = tamaño}

    method hogar(lugar){ hogar = lugar}
    
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
    method rolandoPosee(artefacto){
        return self.posesiones().contains(artefacto)
    }
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
