class BookersController < ApplicationController
  def index
    @bookers = Booker.all
  end

  def show
    @booker = Booker.find(params[:id])
  end


  def new
    @booker = Booker.new
    @bookers = Booker.all
  end

  def create
    booker = Booker.new(booker_params)
    booker.save
    if booker.save
       flash[:notice] = "Book was successfully created."
       redirect_to booker_path(booker)
    end
  end


  def edit
    @booker = Booker.find(params[:id])
  end

  def update
    booker = Booker.find(params[:id])
    booker.update(booker_params)
    if booker.update(booker_params)
       flash[:notice] = "Book was successfully updated."
       redirect_to booker_path(booker)
    end
  end

  def destroy
    booker = Booker.find(params[:id])
    booker.destroy
    if booker.destroy
       flash[:notice] = "Book was successfully destroyed."
       redirect_to new_booker_path
    end
  end

  private

  def booker_params
    params.require(:booker).permit(:title, :category, :body)
  end
end
