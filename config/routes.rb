Rails.application.routes.draw do
  #devise_for :admins, skip: [:registrations]
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    #admin/posts
    #admin/users
    root to: "home#index"
    resources :home
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
