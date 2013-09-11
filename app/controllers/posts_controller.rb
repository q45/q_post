class PostsController < ApplicationController
  def index

  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new
  end

  def show
  	@post = Post.find_by(params[:id])
  end

  def edit
  	@post = Post.find_by(params[:id])
  end

  def update
  	@post = Post.find_by(params[:id])
  end

  def destroy
  	@post = Post.find_by(params[:id])
  end
end
