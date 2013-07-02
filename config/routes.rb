KubmoSite::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resources :mentors, only: [:create, :new]
end
