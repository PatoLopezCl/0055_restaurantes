class TiposComidasController < ApplicationController

    #GET  /tipos_comidas
    def listar
        @todos_los_tipos = TiposComidas.all
    end
end