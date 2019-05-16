Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  resources :user_details
  resources :unit_doctors
  resources :medical_units
  resources :doctors
  resources :comments

  get 'customComments', to: 'comments#custom'
  get 'customUsers', to:'users#custom'
  get 'customUsers/:id', to:'users#customId'
  post 'find_user' => 'users#find'
  get 'logout' => 'users#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
