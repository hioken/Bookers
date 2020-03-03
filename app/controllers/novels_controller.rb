class NovelsController < ApplicationController

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def create
    @books = Book.all
  	@book = Book.new(list_params)
    if @book.save
      redirect_to book_path(@book.id), notice:"Book was successfully created."
    else
      render action: :index
    end
  end

  def top
  	
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(list_params)
      redirect_to book_path(@book.id), notice:"Book was successfully updated."
    else
      render action: :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path, notice:"Book was successfully destroyed."
  end

  private
  def list_params
  	params.require(:book).permit(:title, :body)
  end

end