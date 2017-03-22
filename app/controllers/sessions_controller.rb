class SessionsController < ApplicationController
  def new
  end
  
  #creates session
  def create
    @user = User.where(user_name: params[:user_name]).first
    
    if @user.nil? then
      flash[:danger] = "Incorrect email/password"
      redirect_to '/login'
    elsif @user.password == params[:password]
      flash[:success] = "Welcome back!"
      session[:user_id] = @user.id
      redirect_to '/components'
    else
      flash[:danger] = "Incorrect email/password"
      redirect_to '/login'
    end
  end
    
  def destroy
#    session[:user_id] = nil
#    reset_session
    session.delete(:user_id)
    redirect_to '/login'
  end
end
