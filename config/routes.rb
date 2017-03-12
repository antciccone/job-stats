Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/dashboard', to: 'dashboard#index'

post '/company', to: 'company#create'
get '/all_companies', to: 'company#all_companies'

post '/response', to: 'response#create'
get '/all_responses', to: 'response#all_responses'

end
