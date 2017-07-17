Rails.application.routes.draw do

  get 'admin',:to=>'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :subjects do
    member do
      get :delete
    end
  end

  # get 'demo/index'

  # get 'demo/about'
  
  # default route
  get ':controller(/:action(/:id))'

  # match 'demo/' , :to => 'demo#index', :via => :get

  root 'demo#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
