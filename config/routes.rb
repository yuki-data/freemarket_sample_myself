Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "temporary_image_uploader#index"
  resources :temporary_image_uploader, only: [:index, :new, :create], path: "image"
end
