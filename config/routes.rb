Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'inquiries#new'
  post 'inquiries/confirm'
  post 'inquiries/thanks'
end
