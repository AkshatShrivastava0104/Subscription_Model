Rails.application.routes.draw do
  get "posts/index"
  get "posts/show"
  get "plans/index"
  get "plans/select"
  devise_for :users
  root "pages#home"
  get "plans", to: "plans#index"
  post "plans/select/:id", to: "plans#select", as: "select_plan"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  resources :posts, only: [:index, :show]
end

