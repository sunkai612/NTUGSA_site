class Admin::PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  end

  def destroy
  	@post = Post.find(params[:id])
	@post.destroy

	redirect_to admin_posts_path
  end

end
