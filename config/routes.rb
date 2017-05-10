Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      put 'users', to: 'users#update'
      get 'current_user', to: 'users#current_user'
      resources :suppliers
      resources :companies
    end
  end
end
