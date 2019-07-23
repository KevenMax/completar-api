Rails.application.routes.draw do
  resources :horas_complementares
  resources :atividades
  resources :categorias
  resources :cursos
  resources :campus
  mount_devise_token_auth_for 'Usuario', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
