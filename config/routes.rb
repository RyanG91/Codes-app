Rails.application.routes.draw do
  devise_for :users
  get 'page/codes'

  root to: "page#codes"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
