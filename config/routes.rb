Rails.application.routes.draw do

  root to: 'guests#index'

  get 'features',   :to => 'guests#features',   as: :features
  get 'pricing',    :to => 'guests#pricing',    as: :pricing
  get 'contact',    :to => 'guests#contact',    as: :contact


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations',
  }

  namespace :app do
    get 'dashboard' => 'dashboards#index',  as: :dashboards
    get 'setting' => 'settings#index',  as: :settings
    get 'report' => 'reports#index',  as: :reports
    resources :users do
      collection do
        get :profile
      end
    end
  end

  namespace :admin do
    get 'dashboard' => 'dashboards#index',  as: :dashboards
    get 'setting' => 'settings#index',  as: :settings
    get 'report' => 'reports#index',  as: :reports
    resources :users
    resources :businesses, only: [:update] do
      collection do
        get :profile
      end
    end
  end
end
