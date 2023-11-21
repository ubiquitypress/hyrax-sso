# frozen_string_literal: true

require "sidekiq/web"

HykuAddons::Engine.routes.draw do
  get "/api/v1/tenant/:tenant_id/sso/login", to: "/hyku_addons/sso#uiauth"
  post "/api/v1/tenant/:tenant_id/sso/callback", to: "/hyku_addons/sso#uicallback"

  get "/sso/login", to: "/hyku_addons/sso#auth", as: :sso_login
  get "sso/callback", to: "/hyku_addons/sso#callback", as: :sso_callback
end
