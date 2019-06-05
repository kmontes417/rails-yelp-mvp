Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[index new create show]
  end

  namespace :admin do
    resources :restaurants, only: %i[edit update destroy] do
      resources :reviews, only: %i[edit update destroy]
    end
  end
end
