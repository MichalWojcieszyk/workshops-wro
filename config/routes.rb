Rails.application.routes.draw do
  get 'payments/create'

  get 'payments/update'

  get 'payments/destroy'

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do
  	get :subjects
  end

  resources :visitors, only: [:index]

  get 'report/subjects', to: 'reports#subjects'

  root to: "visitors#index"
end
