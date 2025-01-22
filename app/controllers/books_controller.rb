class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def show
    @book = Book.new
    @post_book = Book.find(params[:id])
    @user = @post_book.user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = current_user.books.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book.id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
