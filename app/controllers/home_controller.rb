class HomeController < ApplicationController
  def index
  end

  def write
    post = Post.new
    post.title_db = params[:title]
    post.content_db = params[:content]
    post.save

   redirect_to "/home/list" 
  end

  def list
    @post = Post.all.reverse
  end
end
