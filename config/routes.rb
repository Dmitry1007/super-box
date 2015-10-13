Rails.application.routes.draw do
  root 'api/v1/ideas#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/ideas', to: 'ideas#create'
    end
  end
end
