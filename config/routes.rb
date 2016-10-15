Rails.application.routes.draw do

  get 'pages/info'
  get 'pages/top'

  resources :spots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('pages/top')

end
