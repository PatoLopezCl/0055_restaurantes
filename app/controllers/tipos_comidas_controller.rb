# Los controladores son en "plural" y hacen referencia al modelo
class TiposComidasController < ApplicationController

    #GET  /tipos_comidas
    def listar
        @todos_los_tipos = TiposComidas.all.order(id: :asc)
        @titulo_link = "Registrar nuevo tipo de comida"
    end

    # GET /nuevo_tipo_comida
    def nuevo
        @nuevo_tipo_comida =TiposComidas.new
    end
# POST / nuevo_tipo_comida
    def crear
        # guardar lo que llegue del formulario en la base de datos
        datos_tipo_comida = params.require(:tipos_comidas).permit(:tipo)
        nuevo_tipo = TiposComidas.new(datos_tipo_comida)
        nuevo_tipo.save
        redirect_to listar_tipos_comidas_path
    end
    def eliminar


end