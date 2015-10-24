class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.where(slug: params[:slug]).first
  end

  def new
  end

  def create
  end

  def delete
  end

  def update
  end

  def edit
  end
end
