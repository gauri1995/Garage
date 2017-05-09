class RegistrationsController < Devise::RegistrationsController
 before_filter :configure_permitted_parameters

    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name ,:email , :photo, :password ,:password_confirmation])
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:photo, :email, :password])
  end

end

