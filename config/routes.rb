Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :about
  get 'about' => 'about#index'
  resources :posts do
  	member do 
  		get "like", to: "posts#upvote"
  		get "dislike", to: "posts#downvote"
  	end

    collection do
      get 'search'
    end
    
  	resources :comments
  end

  root 'posts#index'
end
