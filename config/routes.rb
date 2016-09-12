Rails.application.routes.draw do
  jsonapi_resources :challenges
  jsonapi_resources :users
  jsonapi_resources :comments

  mount Knock::Engine => "/knock"
end
