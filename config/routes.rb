Rails.application.routes.draw do
  get 'mynotes/index'
  get 'notes/about' => 'notes#about'
  get 'notes/contact' => 'notes#contact'
  devise_for :users, controllers: { registrations: 'registrationes' }
  root 'notes#index'
  resources :notes do
    resources :comments
  end
  resources :mynotes

end
