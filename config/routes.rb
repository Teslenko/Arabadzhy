Rails.application.routes.draw do

  # resources :users

  resources :candidates do
    resources :comments
  end

  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/contact'=> 'static_pages#contact'
  get '/about' => 'static_pages#about'

  get :black_list, controller: :candidates
  get :reserved, controller: :candidates
  get :home_list, controller: :candidates
  get :search, controller: :candidates
  get :autocomplete, controller: :candidates

  resources :candidates

  root  'static_pages#home'


end
