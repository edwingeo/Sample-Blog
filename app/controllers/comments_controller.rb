class CommentsController < ApplicationController
  def index
    @comments=Comment.find(:all)
  end
  def new
   @blog= Blog.find(params[:id])
   @comment = @blog.comments.new
  end
  def create
#    @blog= Blog.find(params[:id])
#puts @blog
@blog= Blog.find(params[:blog_id])

    @comment = @blog.comments.new(params[:comment])
    @comment.posted_date =DateTime.now
    #@comment.user_id     =Blog.user_id
      if @comment.save
        flash[:notice] = "Comment saved successfully"
#        render :action => :new
        redirect_to home_index_path
      else
        flash[:error] = "There was an error"
        render :action => :new
      end
  end
  def show
    @blog = Blog.find(params[:id])
  end
  def destroy
    @comment=Comment.find(params[:id])
    if @comment.destroy
      flash[:notice] = "Book deleted successfully"
     end
  end
 
end
