class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
  end

  def create
    @book = current_user.books.new(book_params)
    @book.save
    redirect_to users_path(@book.user_id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
  
end
