Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'home/about'
  resources :books
  resources :users
  post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
  get 'follow/:id'=> 'relationships#follow'
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す


  get 'unfollow/:id' => 'relationships#follower'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
