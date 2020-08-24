
UPDATE for file app/controllers/posts_controller.rb

    def create
        @post = Post.new(post_params(:title, :description))
        @post.save
        redirect_to post_path(@post)
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params(:title))
        redirect_to post_path(@post)
    end
    
private
 
def post_params(*args)
  params.require(:post).permit(*args)
end


ORIGINAL for file app/controllers/posts_controller.rb

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



===============================================

STRONG PARAMS Disabled then Re-enabled

Let's enable Strong Params: 
    - open up config/application.rb 
    - delete the line that says: config.action_controller.permit_all_parameters = true.
    - Now restart your rails server


THE HACK CODE:

    <br>
    <label>Description:</label>
    <br>
    <input type="text" value="malicious description" name="post[description]" id="post_description">


PERMIT -vs- REQUIRE
The #require method is the most restrictive. It means that the params that get passed in must contain a key 

