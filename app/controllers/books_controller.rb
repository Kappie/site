class BooksController < ApplicationController
  before_filter :authorize, :except => [:index, :show]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    redirect_to @book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to boeken_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :rating, :isbn,
      :review, :abstract, :cover)
  end

end

