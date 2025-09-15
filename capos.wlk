object rolando {
    const mochila = []
    var capacidadMochila = 2
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

}

object espadaDelDestino{
    
}

object libroDeHechizos{

}

object collarDivino{

}

object escudoDeAceroValytio{

}