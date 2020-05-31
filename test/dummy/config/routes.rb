# frozen_string_literal: true

Rails.application.routes.draw do
  mount Cough::Engine => '/health'
end
