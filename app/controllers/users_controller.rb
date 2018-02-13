class UsersController < ApplicationController
  def index
    @new = New.all
    @threew = Threew.all
    change_position("home")
  end
  def create
    if user_params[:password] != user_params[:confirm_password]
      flash[:error] = "Password did not match"
      redirect_to home_path
    elsif params[:inviteCode] != "TMclub21sm"
      flash[:error] = "Invalid Invitation Code"
      redirect_to home_path
    else
      @user = User.new(user_params)
      if @user.save
        login(@user)
        flash[:success] = "Welcome!"
        redirect_to home_path
      else
        flash[:error] = @user.errors.full_messages[0]
        redirect_to home_path
      end
    end
  end
  def destroy
    logout
    flash[:success] ="Successfully Logged Out"
    redirect_to home_path
  end

  def direction
    change_position("direction")
    render "direction"
  end

  def info
    change_position("info")
    render "info"
  end

  def education
    change_position("education")
    render "education"
  end
end
