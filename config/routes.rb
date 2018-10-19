Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    mount RailsAdmin::Engine => '/wp-admin', as: 'rails_admin'
    mount Ckeditor::Engine => '/ckeditor'
    devise_for :users
    root 'page#index'
  end
end
