Rails.application.routes.draw do
  get to: 'posts#index'
  get 'posts',to: 'posts#new'
  post 'posts/:id', to: 'posts#create'
end
