class SessionsController < ApplicationController
  def new 

  end

  def create 
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(:password)
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid Email or password'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, alert: 'Logged out succesfully'
  end
end