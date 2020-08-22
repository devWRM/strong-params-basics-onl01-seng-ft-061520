class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	#   CHANGED FROM: @post = Post.new(params["post"])
		@post = Post.new(params.require(:post).permit(:title, :description))

	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post = Post.find(params[:id])
	  
	#   CHANGED FROM: @post.update(params["post"])
		@post.update(params.require(:post).permit(:title))

	  redirect_to post_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end
end
