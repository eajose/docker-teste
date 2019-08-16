Rails.application.routes.draw do
  resources :formacaos
  resources :cursos_complementares
  resources :exp_profissionals
  resources :curriculos
  resources :funcionarios
  resources :contratacaos
  resources :processo_seletivos
  resources :candidatos
  resources :usuarios
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
