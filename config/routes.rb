Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :index, :show, :create] do
    resources :goals
  end
  resource :session, only: [:new, :create, :destroy]
  
end
