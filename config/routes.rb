Rails.application.routes.draw do
  
  devise_for :users
  root 'mains#top'
  get 'form/:id' => 'mains#form'
  post 'form' => 'mains#create'


end
