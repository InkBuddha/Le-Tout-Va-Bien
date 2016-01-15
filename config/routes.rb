Rails.application.routes.draw do
  root           'pages#home'
  get 'links' => 'pages#links'
  get 'hotel_presentation' => 'pages#hotel_presentation'
  get 'restaurant_presentation' => 'pages#restaurant_presentation'
  get 'tarifs' => 'pages#tarifs'
  get 'access' => 'pages#access'
end
