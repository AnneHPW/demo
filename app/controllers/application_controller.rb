class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "test", password: "test" if Rails.env.development?
  # utilisable par exemple pour bloquer l'accès à l'environnement staging
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

