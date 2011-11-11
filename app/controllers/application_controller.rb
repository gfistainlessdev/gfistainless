class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end
  rescue_from CanCan::AccessDenied do |exception|
     flash[:error] = "Access denied."
     redirect_to root_url
   end
  
end
