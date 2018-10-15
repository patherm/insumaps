class ApplicationController < ActionController::Base
	 #before_action :authenticate_user!
	  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
      admin_path
    end

	def configure_permitted_parameters
		added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
		devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
		devise_parameter_sanitizer.permit :account_update, keys: added_attrs
	end
end
