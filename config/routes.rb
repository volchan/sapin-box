Rails.application.routes.draw do
  devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks'
}

  root to: 'pages#home'

  namespace :soundboard do
    resources :sounds, only: %I[index], path: "/"
  end
end
