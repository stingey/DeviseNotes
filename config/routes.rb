Rails.application.routes.draw do
  get 'mynotes/index'

  devise_for :users, controllers: { registrations: 'registrationes' }
  root 'notes#index'
  resources :notes do
    resources :comments
  end
  resources :mynotes

end
