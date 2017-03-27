Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/dashboard', to: 'dashboard#index'

post '/company', to: 'company#create'
get '/all_companies', to: 'company#all_companies'

post '/response', to: 'response#create'
get '/all_responses', to: 'response#all_responses'

post '/applied', to: 'applied#create'
get '/all_applied', to: 'applied#all_applied'


post '/phone-interview', to: 'phone_interview#create'
get '/phone-interview', to: 'phone_interview#interviews'

post '/homework', to: 'homework#create'
get '/all-homework', to: 'homework#all_homework'

post '/in-person', to: 'in_person#create'
get '/all-interviews', to: 'in_person#interview'

post '/coffee', to: 'coffee#create'
get '/coffee', to: 'coffee#date'

get '/', to: redirect('/login')
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :users, only: [:index, :new, :create]


end
