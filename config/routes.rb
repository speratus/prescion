Rails.application.routes.draw do
  get 'fonts/*ttf', to: 'fonts#materialdesignicons_webfont'
  get 'login', to: 'login#login', as: 'login'
  get 'signup', to: 'login#signup', as: 'signup'
  post 'create-session', to: 'login#create_session', as: 'create_session'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :stories
end
