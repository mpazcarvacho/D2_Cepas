class ApplicationController < ActionController::Base
  
  # added 01/12 to test devise
  # before_action :configure_permitted_parameters, if: :devise_controller?


  def authorize_editor!
    
    if(!user_signed_in?)
      redirect_to new_user_session_url, alert: "You must sign in and be a editor in to access this section"
    else
      unless(current_user.editor?)
        redirect_to root_path, alert: "You must be a editor in to access this section"
      end
    end
    
  end

  # Preload data
  def run_seed
    Rails.application.load_seed
  end
  
  # protected

  # def current_token
  #   request.env['warden-jwt_auth.token']
  # end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  # end

end
