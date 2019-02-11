Rails.application.routes.draw do

  root "welcome#index"
  get '/calculate_value', to: "welcome#index"
end
