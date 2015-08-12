Rails.application.routes.draw do
  devise_for :users
  root to: 'refrigers#home'

  resources :refrigers do
    resources :foods
  end

  resources :posts do
  # consider using a more semantic name, like recipes.
    resources :comments
  end

end
