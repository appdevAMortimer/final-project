class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, raise: false
    #before_action :configure_permitted_parameters, if: :devise_controller?
      before_action :authenticate_user!
end
