class BlogsController < ApplicationController
  before_filter:login_required,:except=>[:index]
  def index
   @blogs =current_user.blogs
    
 end
def new
  @blog=Blog.new
end
def create
 @blog = current_user.blogs.new(params[:blog])
# @blog.user_id =current_user.id
       if @blog.save
        flash[:notice] = "Book saved successfully"
#        render :action => :new
        redirect_to new_category_path
      else
        flash[:error] = "There was an error"
        render :action => :new
      end
end
def edit
  @blog = Blog.find(params[:id])
end
def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      flash[:notice] = "Book saved successfully"
        redirect_to blogs_path
    else
      flash[:error] = "Book saved successfully"
      redirect_to blogs_path
    end
  end
  def destroy
     @blog=Blog.find(params[:id])
    if @blog.destroy
      flash[:notice] = "Book deleted successfully"
    else
      flash[:error] = "Book saved successfully"
    end
    redirect_to blogs_path

  end


end
