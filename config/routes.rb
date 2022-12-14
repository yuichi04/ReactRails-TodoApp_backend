Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
     resources :todos, only: [:index, :show, :create, :update, :destroy]
     resources :boards, only: [:index, :show, :create, :update, :destroy]
    end 
  end 
end