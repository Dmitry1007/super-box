Rails.application.routes.draw do
  root 'api/v1/ideas#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get  '/ideas', to: 'ideas#index'
      post '/ideas', to: 'ideas#create'
    end
  end
end
