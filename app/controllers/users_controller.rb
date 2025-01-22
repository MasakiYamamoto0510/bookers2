class UsersController < ApplicationController
  def show
    @book = Book.new
    @books = Book.all
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def update 
    user = current_user
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
