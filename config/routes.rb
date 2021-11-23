Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get "followings" => 'relationships#followings'
    get "followers" => 'relationships#followers'
  end

  resources :posts do
    resources :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :tags, only: [:index] do
    get 'search' => 'searches#tag_search'
  end

  get 'favorites' => 'favorites#index'
  get 'user_search' => 'searches#user_search'
  get 'post_search' => 'searches#post_search'

  get 'homes/about'
  get 'timeline' => 'posts#timeline'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
