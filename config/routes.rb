# frozen_string_literal: true

Rails
  .application
  .routes
  .draw do
    devise_for :admin_users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)

    get 'confirm', to: 'guests#confirm'

    resources :guests

    root 'welcome#index'
  end
