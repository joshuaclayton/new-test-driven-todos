class SessionsController < ApplicationController
  def new

  end

  def create
    session[:current_email] = params.require(:session).permit(:email)[:email]
    redirect_to root_path
  end
end
