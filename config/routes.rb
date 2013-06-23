KubmoSite::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  get '/how-it-works', to: 'pages#how-it-works', as: 'how_it_works'
  get '/entrepreneurs', to: 'pages#entrepreneurs', as: 'entrepreneurs'
  get '/team', to: 'pages#team', as: 'team'
end
