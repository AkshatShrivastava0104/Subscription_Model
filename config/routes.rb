Rails.application.routes.draw do
  get "plans/index"
  get "plans/select"
  devise_for :users
  root "pages#home"
  get "plans", to: "plans#index"
  post "plans/select/:id", to: "plans#select", as: "select_plan"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
end

