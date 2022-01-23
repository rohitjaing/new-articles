class LikesController < ApplicationController
 before_action :find_post

   def like
    @post.likes.create(user_id: current_user.id)
    redirect_to post_path(@post)
  end
   def unlike
    @post.likes.where(user_id: current_user.id).last.destroy
    redirect_to post_path(@post)
end
  private
  def find_post
    @post = Post.find(params[:id])
  end	
end
