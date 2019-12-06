Rails.application.routes.draw do
  get 'sessions/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create' as: '/welcome'
  post '/logout' => 'sessions#destroy'
  # Visit the root of the app and be redirected to a login page.
  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
