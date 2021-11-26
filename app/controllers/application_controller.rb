class ApplicationController < ActionController::Base
  
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
  
end
