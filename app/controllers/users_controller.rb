class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id #Auto login
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def show
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params

    flash[:notice] = "User details is now updated."

    redirect_to user
  end
  def destroy
    user = User.find params[:id]
    user.destroy

    flash[:notice] = "User account is now deleted."
    redirect_to root_path
  end

private
  def user_params
    params.require(:user).permit(:username, :avatar, :avatar_cache, :password, :password_confirmation)
  end

  # def check_if_logged_in
  #   redirect_to(new_user_path) if @current_user.nil?
  # end

  # def check_if_admin
  #   redirect_to(root_path) if @current_user.is_admin?
  # end
end