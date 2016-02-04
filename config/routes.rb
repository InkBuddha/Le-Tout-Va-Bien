Rails.application.routes.draw do
  resources :reservations, only: [:new, :create]

  root           'pages#home'
  get 'links' => 'pages#links'
  get 'hotel_presentation' => 'pages#hotel_presentation'
  get 'restaurant_presentation' => 'pages#restaurant_presentation'
  get 'tarifs' => 'pages#tarifs'
  get 'access' => 'pages#access'
  get 'sitemap' => 'pages#sitemap'
end
