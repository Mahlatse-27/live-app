class Admin::PostsController < ApplicationController
  def index
    @data = Post.all
  end

  def new
  end

  def show
    @post = Post.get(params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
