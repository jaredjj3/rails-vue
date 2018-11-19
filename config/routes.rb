Rails.application.routes.draw do
  root to: "static_pages#root"

  resources :order_line_statuses, only: :create
end
