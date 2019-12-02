Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :comedians
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
