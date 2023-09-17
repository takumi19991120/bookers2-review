Rails.application.routes.draw do
  
  scope module: :public do
    root to: "homes#top"
    get "homes/about"=>"homes#about", as: "about"
    resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
    resources :users, only: [:index,:show,:edit,:update]
  end
  
  devise_for :users,skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
