Rails.application.routes.draw do
  resource :history, only: :show
end
