Rails.application.routes.draw do
  resources :pain_levels
  root 'platform#index'
  get 'index' => 'platform#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
