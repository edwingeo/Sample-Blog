class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def new
    @category=Category.new
  end
  def create
    @category = Category.new(params[:category])
      if @category.save
        flash[:notice] = "Book saved successfully"
#        render :action => :new
        redirect_to new_category_path
      else
        flash[:error] = "There was an error"
        render :action => :new
      end
  end
   def edit
    @category = Category.find(params[:id])
  end
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Book saved successfully"
        redirect_to categories_path
    else
      flash[:error] = "Book saved successfully"
      redirect_to categories_path
    end
  end
  def destroy
     @category=Category.find(params[:id])
    if @category.destroy
      flash[:notice] = "Book deleted successfully"
    else
      flash[:error] = "Book saved successfully"
    end
    redirect_to categories_path

  end
end
