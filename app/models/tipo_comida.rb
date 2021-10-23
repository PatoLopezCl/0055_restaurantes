class TipoComida < ApplicationRecord
    has_many :restaurantes

    validates(:tipo, precence: true) #evita guardar datos vacios en la BD según el campo de tipo
    validates(:tipo, uniqueness: true) # evita que existan registros duplicados según el campo de tipo
end
