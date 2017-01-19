Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrationes' }
  root 'notes#index'
  resources :notes

end
