class PasswordResetsController < ApplicationController
  def new 
  end

  def create 
    @user = User.find_by(email: params[:email])
    if @user.present?
      
    end
    redirect_to root_path, notice: "Reset password link sent to your email"
  end
end