Rails.application.routes.draw do
  get 'welcome/index'

  resources :restaurants do
    resources :cocktails
  end

  get 'restaurants/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
