Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
}


  resources :cities do
     resources :posts
  end

  resources :userprofile do
    resources :posts
  end

  patch '/cities/:id' => "cities#update", as: 'city_update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "cities#index"
end
