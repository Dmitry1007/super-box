Rails.application.routes.draw do
  root 'ideas#index'
  post '/ideas', to: 'ideas#create'
end
