Rails.application.routes.draw do
  resources :horas_complementares
  resources :atividades
  resources :categorias do
    collection do
      get 'home'
    end
  end
  resources :cursos
  resources :campus
  resources :usuarios, only: [:create] do
    collection do
      put 'update'
    end
  end
  resources :auth, only: [:create]
end
