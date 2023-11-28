# frozen_string_literal: true

require "sidekiq/web"

Hyrax::Engine.routes.draw do
  get "/api/v1/tenant/:tenant_id/sso/login", to: "/hyrax/sso#uiauth"
  post "/api/v1/tenant/:tenant_id/sso/callback", to: "/hyrax/sso#uicallback"

  get "/sso/login", to: "/hyrax/sso#auth", as: :sso_login
  get "sso/callback", to: "/hyrax/sso#callback", as: :sso_callback
end
