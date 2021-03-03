class SessionsController < ApplicationController
  def sign_in
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "logged out"
  end
end