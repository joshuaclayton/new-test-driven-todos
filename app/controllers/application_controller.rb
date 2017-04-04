class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to sign_in_path
    end
  end

  def signed_in?
    !!session[:current_email]
  end
end
