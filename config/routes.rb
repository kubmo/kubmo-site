KubmoSite::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resources :mentors, only: [:create, :new]
  resource :entrepreneur_applications, only: [:create, :new]

  get '/diana', to: 'pages#diana', as: 'diana'
  get '/joy', to: 'pages#joy', as: 'joy'
  get '/jacinta', to: 'pages#jacinta', as: 'jacinta'
  get '/joan', to: 'pages#joan', as: 'joan'
  get '/noella', to: 'pages#noella', as: 'noella'
  get '/jullie', to: 'pages#jullie', as: 'jullie'

  get '/emma', to: 'pages#emma', as: 'emma'
  get '/kinsey', to: 'pages#kinsey', as: 'kinsey'
  get '/brooke', to: 'pages#brooke', as: 'brooke'
  get '/john', to: 'pages#john', as: 'john'
  get '/claudia', to: 'pages#claudia', as: 'claudia'
end
