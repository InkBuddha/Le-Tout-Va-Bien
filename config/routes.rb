Rails.application.routes.draw do
  root           'pages#home'
  get 'links' => 'pages#links'  
end
