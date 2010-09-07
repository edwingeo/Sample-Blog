class HomeController < ApplicationController
  def index
    #@blogs=Blog.find(:all)
    @blogs=Blog.paginate :per_page => 2, :page => params[:page]
  end
end
