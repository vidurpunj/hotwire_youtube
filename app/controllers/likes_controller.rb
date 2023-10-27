class LikesController < ApplicationController
  before_action :set_blog

  def create
      @blog.increment! :likes
      redirect_to blogs_path
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end
end
