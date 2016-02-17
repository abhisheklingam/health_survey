class SessionsController < ApplicationController
  def new
  end

  def create
  	 login = Login.find_by_email(params[:email])
    if login && login.authenticate(params[:password])
      session[:login_id] = login.id
      redirect_to root_url, notice: 'Logged in!'
    else
      render :new
    end
  end

  def destroy
  	session[:login_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
  
end
