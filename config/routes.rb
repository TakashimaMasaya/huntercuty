Rails.application.routes.draw do
  constraints ->  request { request.session[:user_id].present? } do
    # ログインしてる時のルートパス
    root 'quests#index'
  end
  # ログインしてない時のルートパス
  root 'user_sessions#new'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users
  resources :quests
  resources :lessons
  resources :quests do 
    resources :answers
  end
end