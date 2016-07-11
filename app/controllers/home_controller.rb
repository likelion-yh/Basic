class HomeController < ApplicationController
  def index
    @post = Post.all.reverse
  end

  def write 
    post = Post.new
    post.title_db = params[:title]
    post.content_db = params[:content]
    post.save
    redirect_to "/home/index" 
  end
 
  def delete
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to "/home/index"
  end
end
