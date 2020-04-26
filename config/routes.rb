Rails.application.routes.draw do
  get 'users/new'
  get 'welcome/index'
  # resources :articles
  resources :articles do
    resources :comments
    end
   resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
