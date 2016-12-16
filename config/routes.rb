Rails.application.routes.draw do

  resources :reports
  root to: "reports#index"

  namespace :api do
    namespace :v1 do
        get '/elections' => 'elections#index'
        post '/elections' => 'elections#create'
      end
  end

end
