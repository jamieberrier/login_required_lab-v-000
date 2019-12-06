Rails.application.routes.draw do
  get 'sessions/new'

  3=#get '/login' => 'sessions#new'
  post '/welcome' => 'sessions#create'
  #post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get 'secret' => 'secrets#show'

  #get 'secret' => 'secrets#show'
  # Visit the root of the app and be redirected to a login page.
  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
