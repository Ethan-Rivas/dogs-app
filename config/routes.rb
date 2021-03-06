Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'frontend#index'

  namespace :api do
    namespace :v1 do
      resources :dogs do
        resources :pictures
      end
      resources :races
      resources :vaccines
      resources :carts
    end
  end

  match '*path', to: 'frontend#index', via: :all
end
