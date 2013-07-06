KubmoSite::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resources :mentors, only: [:create, :new]
  resource :entrepreneur_applications, only: [:create, :new]
end
