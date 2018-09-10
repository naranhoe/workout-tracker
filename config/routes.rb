require 'sidekiq/web'

Rails.application.routes.draw do

  class Subdomain
    def self.matches?(request)
      subdomains = %w{ www admin }
      request.subdomain.present? && !subdomains.include?(request.subdomain)

    end
  end

  devise_for :users
  root to: 'home#index'
end
