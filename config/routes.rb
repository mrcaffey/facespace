Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/create'
  get 'friends/update'
  get 'friends/show'
  get 'friends/new'
  get 'friends/edit'
  get 'friends/destroy'
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    #API ROUTES SHOULD GO HERE
    resources :friends
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
