Rails.application.routes.draw do
  resources :assuntos do |assuntos|
  	resources :temas, :name_prefix => "assunto_"
end

resources :temas do |temas|
	resources :questaos, :name_prefix => "tema_"
end	
  resources :questaos
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
