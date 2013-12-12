KubmoSite::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resources :mentors, only: [:create, :new]
  resource :entrepreneur_applications, only: [:create, :new]

  resources :donations

  get 'how', to: 'pages#how', as: 'how'
  get 'year', to: 'pages#year', as: 'year'

  get '/diana', to: 'pages#diana', as: 'diana'
  get '/noella', to: 'pages#noella', as: 'noella'
  get '/joy', to: 'pages#joy', as: 'joy'
  get '/joan', to: 'pages#joan', as: 'joan'
  get '/melab', to: 'pages#melab', as: 'melab'
  get '/jullie', to: 'pages#jullie', as: 'jullie'
  get '/judith', to: 'pages#judith', as: 'judith'
  get '/lorraine_1', to: 'pages#lorraine_1', as: 'lorraine_1'
  get '/janet', to: 'pages#janet', as: 'janet'

  get '/emma', to: 'pages#emma', as: 'emma'
  get '/kinsey', to: 'pages#kinsey', as: 'kinsey'
  get '/brooke', to: 'pages#brooke', as: 'brooke'
  get '/john', to: 'pages#john', as: 'john'
  get '/claudia', to: 'pages#claudia', as: 'claudia'
  get '/emily', to: 'pages#emily', as: 'emily'
  get '/winnie', to: 'pages#winnie', as: 'winnie'
end
