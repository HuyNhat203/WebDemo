Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]

  get "sign_up", to: "registrations#new"
  post "users", to: "registrations#create"
  root "products#index"
end
