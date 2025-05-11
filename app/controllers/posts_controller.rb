class PostsController < ApplicationController
  before_action :authentication_user!,
  def index
     if current_user.plan&.name == "Pro"
      @posts = Post.all
    else
      @posts = Post.where(premium: false)
    end
  end

  def show
     @post = Post.find(params[:id])

    if @post.premium? && current_user.plan&.name != "Pro"
      redirect_to posts_path, alert: "Upgrade to Pro to access this content."
    end
  end
end
