class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # def  configure_permitted_parameters
  #   birth = params[:user]["birth_date(1i)"] + "-" +params[:user]["birth_date(2i)"] + "-" +  params[:user]["birth_date(3i)"]
  #   params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :birthday, :image, :gender).merge(birth_date: birth)
  #   # params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :first_name, :last_name, :birth_date)
  # end
  def configure_permitted_parameters
    added_attrs = [ :email, :nickname, :password, :password_confirmation, :birthday, :image, :gender ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
