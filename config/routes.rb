Rails.application.routes.draw do
  resources :wishlists
  get 'contact', to: 'home#contact'
  
  post 'request_contact', to: 'home#request_contact'
  devise_for :users
  
  
  if Rails.env.test?
    resources :albums
    resources :reviews
    resources :wishlists
  end
  
  
  resources :albums do
    resources :reviews, except: [:show, :index]
  end

  root 'home#home'
end
