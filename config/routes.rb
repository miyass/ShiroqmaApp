Rails.application.routes.draw do
  
  devise_for :users
  root 'mains#top'
  get 'form' => 'mains#form'
  post 'form' => 'main#create'

end
