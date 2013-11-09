class BooksController < ApplicationController
  before_filter :authorize, :except => [:index, :show]

  def index
    @books = Book.all
  end

end
