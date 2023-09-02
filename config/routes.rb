Rails.application.routes.draw do
  namespace :public do
    get 'homes/about'
    get 'homes/top'
  end
  namespace :public do
    get 'books/index'
    get 'books/show'
    get 'books/edit'
  end
  namespace :public do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
