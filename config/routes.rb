# frozen_string_literal: true

Rails.application.routes.draw do
	root 'efimeridas#index'
  resources :efimeridas
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
