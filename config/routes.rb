Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tipos_comidas', to: 'tipos_comidas#listar'

end
