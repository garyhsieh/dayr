class Users::RegistrationsController < Devise::RegistrationsController

  def create
    if session[:omniauth] == nil #OmniAuth
      if verify_recaptcha
        super
        session[:omniauth] = nil unless @user.new_record? #OmniAuth
      else
        build_resource
        clean_up_passwords(resource)
#        flash[:notice] = flash[:notice].to_a.concat resource.errors.full_messages
#        flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code."
#       render_with_scope :new
# =>    http://stackoverflow.com/questions/9264738/the-error-on-recaptcha-when-updating-devise-to-version-2-1-0
        flash.delete :recaptcha_error
        flash.now[:alert] = "There was an error with the recaptcha code below. Please re-enter the code."         
        #flash.delete :recaptcha_error
        render :new
      end
    else
      super
      session[:omniauth] = nil unless @user.new_record? #OmniAuth
    end
  end
  
end