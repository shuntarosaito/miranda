class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
       new_display_evaluation_path
  end

  def after_inactive_sign_up_path_for(resource)
      new_display_evaluation_path
  end
end
