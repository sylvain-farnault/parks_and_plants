Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy]


     # actions for plants: :create :destroy
end
