Rails.application.routes.draw do
<<<<<<< HEAD
  resources :songs, only: [:new, :index, :show, :edit, :create, :update, :destroy]

=======
  resources :songs, only: [:new, :index, :show, :edit, :create, :update, :delete]
>>>>>>> 08f2c7312a000bf018652026a26901460e6897de
end
