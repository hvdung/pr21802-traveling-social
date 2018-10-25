Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    mount Ckeditor::Engine => '/ckeditor'
    devise_for :users
    root 'page#index'
    mount RailsAdmin::Engine => '/wp-admin', as: 'rails_admin'
    resources :users, only: [:show, :edit] do
      resources :follows, only: [:create, :destroy]
      member do
        get :about, :follow
      end
    end
  end
end
