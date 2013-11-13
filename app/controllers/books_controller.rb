class BooksController < ApplicationController
  before_filter :authorize, :except => [:index, :show]

  def index
    @books = Book.order("date_read DESC").paginate(:page => params[:page],
      :per_page => 5)
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
    params.require(:book).permit(:title, :author, :rating, :isbn,
      :review, :abstract, :cover, :date_read)
  end

end

