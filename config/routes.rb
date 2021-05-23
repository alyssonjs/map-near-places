Rails.application.routes.draw do
  resources :users, only: [:show, :update, :index, :create], param: :_username 
  resources :profile

  namespace :api do
    namespace :v1 do
      resources :locations do
        resources :ratings
        resources :comments
      end
    end
  end



  post '/auth/login', to: 'authentication#login'
  post '/auth/logout', to: 'authentication#logout'
  get '/*a', to: 'application#not_found'
end
