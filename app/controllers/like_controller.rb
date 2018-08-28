class LikeController < ApplicationController
    def like  
        @post = Post.find(params[:id])
        @post.like_by current_user 
        redirect_to post_path(@post)
        respond_to do |format| 
            format.html { redirect_to post_path(@post) }
            format.js
        end
    end

    def unlike 
        @post = Post.find(params[:id])
        @post.unlike_by current_user 
        redirect_to post_path(@post)
        respond_to do |format| 
            format.html { redirect_to post_path(@post) }
            format.js 
        end
    end
end
