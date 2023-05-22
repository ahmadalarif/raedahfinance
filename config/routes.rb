Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  authenticate :user, lambda { |u| u.admin? } do
  end

  get 'raedah/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "raedah#index"
end
