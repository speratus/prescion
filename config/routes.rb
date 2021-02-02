Rails.application.routes.draw do
  get 'fonts/*ttf', to: 'fonts#materialdesignicons_webfont'
  get 'login/login'
  get 'login/signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
