class User::RegistrationsController < Devise::RegistrationsController
  # https://github.com/plataformatec/devise#strong-parameters
  # This allows you to add new attributes to forms than
  # what comes default with devise.
  # It inherits from Devise::RegistrationsController so that whatever
  # methods not defined here will be picked up in the default registrations
  # controller.
  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

end
