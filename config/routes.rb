Rails.application.routes.draw do
  resource :history, only: :show

  resources :facilities, only: :index
end
