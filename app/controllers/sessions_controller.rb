class SessionsController < ApplicationController
  def create
    @user = User.find_by_username(login_params[:username])

    if @user && @user.authenticate(login_params[:password])
      login(@user)
      flash[:success] = "Successfully logged in."
      redirect_to root_path
    else
      flash[:error] = "Invalid username or password"      # <--- Add this flash notice

      redirect_to root_path
    end
  end

  def destroy
    logout
    flash[:success] ="Successfully Logged Out"
    redirect_to home_path
  end

  def direction
    render "direction"
  end

  def info
    render "info"
  end

  def education
    render "education"
  end
end
