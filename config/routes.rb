Rails.application.routes.draw do
  resources :players do
    resources :resources
  end
end
