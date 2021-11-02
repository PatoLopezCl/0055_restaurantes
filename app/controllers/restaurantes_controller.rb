#plural
class RestaurantesController < ApplicationController
    before_action :asignar_restaurante, only: [:editar, :mostrar, :actualizar, :eliminar]

    # get /restaurantes

def listar
    @restaurantes = Restaurante.all
end
 # GET /restaurantes/nuevo
    def crear
        @restaurante = Restaurante.new
        @tipos_comidas = TipoComida.all
    end

    def editar
        @tipos_comidas  = TipoComida.all 
        @restaurante = Restaurante.find(params[:id])
    end

    def mostrar
       # @restaurante = Restaurante.find(params[:id])
    end


    #POST /restaurantes
    def guardar
        #datos_restaurante =params.require(:restaurante)
        #.permit(nombre, :tipo_comida_id)
        @restaurante = Restaurante.new(params_restaurante)
        if @restaurante.save
            redirect_to restaurantes_path #TODO crear la ruta de todos los restaurantes
        else
            @tipos_comidas = TipoComida.all
            render :crear
        end
    end

    def actualizar
        #@restaurante = Restaurante.find(params[:id])
        #datos_restaurantes = params.requiere(:restaurante).permit(:nombre, :tipo_comida_id)
        @restaurante.nombre = params_restaurantes[:nombre]
        @restaurante.tipo_comida_id = datos_restaurantes[:tipo_comida_id]
        if @restaurante.save
            redirect_to restaurantes_path #TODO crear la ruta de todos los restaurantes
        else
            @tipos_comidas = TipoComida.all
            render :editar
        end

        def eliminar
            @restaurante = Restaurante.find(params[:id])
            @restaurante.destroy
            redirect_to restaurantes_path
        end
    
        private 
    
        def asignar_restaurante
            @restaurante = Restaurante.find(params[:id])
        end
    
        def params_restaurante
            datos_restaurantes = params.require(:restaurante).permit(:nombre, :tipo_comida_id)
        end
    end

end


