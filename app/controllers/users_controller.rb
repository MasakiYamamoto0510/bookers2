class UsersController < ApplicationController
  def show
    @book=Book.new
    @books=Book.all
    @user=User.find(params[:id])
  end

  def edit
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
