class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
       user_path(resource)
  end

   def after_sign_out_path_for(resource)
   '/users/sign_in' # サインアウト後のリダイレクト先URL
   end

  protect_from_forgery with: :exception
end
