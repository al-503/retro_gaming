Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :offers do
  resources :bookings, only: [ :new, :create ]
  end

  resources :bookings, only: [] do
     # refacto
    member { patch :accept }
      # 2 eme version non refacto
    member do
      patch :decline
    end
  end

resource :profil, only: [ :show ]

end
