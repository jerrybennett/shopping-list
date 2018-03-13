Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items
      resources :item_lists
      resources :lists
      resources :user_lists
      resources :users
    end
  end
end
