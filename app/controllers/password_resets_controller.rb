class PasswordResetsController < ApplicationController
  def new 
  end

  def create 
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice: "Reset password link sent to your email"
  end

  def edit 
    @user = User.find_signed!(params[:token], purpose: "Password reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: "Your token has expired, try again"
  end
end