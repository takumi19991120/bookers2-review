class Public::BooksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end
  
  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
