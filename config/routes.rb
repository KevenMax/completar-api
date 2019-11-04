Rails.application.routes.draw do
  resources :horas_complementares
  resources :atividades
  resources :categorias
  resources :cursos
  resources :campus
  resources :usuarios, only: [:create] do
    collection do
      put 'update'
    end
  end
  resources :auth, only: [:create]
end
