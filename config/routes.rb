Rails.application.routes.draw do
  resource :history, only: :show
  resources :users, only: :show

  resources :facilities, only: :index do
    get :qr
  end

  resource :qr_code, only: [] do
    post :validate
  end
end
