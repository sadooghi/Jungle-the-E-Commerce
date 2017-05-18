class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:alert] = nil
      session[:user_id] = user.id
      redirect_to root_path, notice: 'User is created successfully'
    else
      flash[:alert] = user.errors.full_messages

      redirect_to new_user_path
    end
  end

  private

  def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
