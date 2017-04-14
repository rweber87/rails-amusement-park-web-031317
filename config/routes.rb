Rails.application.routes.draw do
	root to: "home#index"
	resources :users, only: [:new, :show, :create, :edit, :update]
	resources :attractions, only: [:index, :new, :show, :create, :edit, :update, :delete]
	resources :home, only: [:index, :new]

end