class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :loading_idea

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
      devise_parameter_sanitizer.for(:sign_up) << :last_name
      devise_parameter_sanitizer.for(:sign_up) << :age
      devise_parameter_sanitizer.for(:sign_up) << :web_site
      devise_parameter_sanitizer.for(:sign_up) << :contact
      devise_parameter_sanitizer.for(:sign_up) << :collaborate
      devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:password, :password_confirmation, :current_password, :name, :last_name, :age, :web_site, :email, :contact, :collaborate) 
    }
    end

  	private
  	def loading_idea
  	  @new_idea = Ideas.new
      if user_signed_in?
        @user = User.find(current_user)
      end
  	end
end
