class SessionsController < ApplicationController
  def new

  end

  def create
    sign_in(session_params[:email])
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email)
  end
end
