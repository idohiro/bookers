class BooksController < ApplicationController
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
    book = Book.index(book_params)
    book.save
    redirect_to book_path(book_id)
  end

  def edit
        @book = Book.find(params[:id])
  end

  def update
    book = Bool.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destory
  end

  private
   def book_params
    params.require(:book).permit(:title, :body)
   end



end
