class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
  end

  def show
    @book = Book.new
    @post_book=Book.find(params[:id])
    @user = @post_book.user
  end

  def create
    @book = current_user.books.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
  
end
