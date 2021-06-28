Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get '/listings/new', to: 'listings#new', as: "new_listing"
#  all forms make a post request to a specific url, hence create that route here
  post '/listings', to:'listings#create', as:'listings'
end
