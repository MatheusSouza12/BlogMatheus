Rails.application.routes.draw do
  
  #devise_for :users
#devise_for :user
#root to: 'welcome#index'

 devise_for :users, :controllers => { registrations: 'user/registrations', sessions: "user/sessions", passwords: 'user/passwords' } do
  end

  authenticated :user do
 	root to: 'posts#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "user/sessions#new"
    end
  end


  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
