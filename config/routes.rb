Rails.application.routes.draw do

  root "welcome#index"
  get '/calculate_value', to: "welcome#index"
  get '/refresh', to: "welcome#refresh", as: "refresh"
end
