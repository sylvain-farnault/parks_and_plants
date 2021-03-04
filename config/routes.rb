Rails.application.routes.draw do
  get 'plant_tags/new'
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy] do
    resources :plant_tags, only: [:new, :create]
  end


  # New plant_tag
  # GET plants/:plant_id/plant_tags/new
end
