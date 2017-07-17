class AccessController < ApplicationController


  def menu

  end


  def login

  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      find_user  = AdminUser.where(:username => params[:username]).first
      if find_user
        auth_user = find_user.authenticate(params[:password])
      end
    end
    if auth_user
      session[:user_id] = auth_user.id
      flash[:notice] = 'loged in'
      redirect_to admin_path
    else
      flash[:notice] = 'invalid username or password'
      render 'login'
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "logeed out"
    redirect_to access_login_path
  end
end
