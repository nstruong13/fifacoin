Rails.application.routes.draw do
  devise_for :vendors
  devise_for :locals
  devise_for :nationals
  devise_for :fifas
  devise_for :users

  get 'landing_page/index'

  resources :national do
    member do
      get 'new_add'
      patch 'new_add'
    end
  end
  resources :fifa
  resources :local do
    member do
      get 'new_add'
      patch 'new_add'
    end
  end
  resources :vendor do
    member do
      get 'new_add'
      patch 'new_add'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "landing_page#show"
end
