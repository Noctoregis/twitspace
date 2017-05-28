class CommentsController < ApplicationController
    
  before_action :authenticate_user!

  def create

    @restaurant = Tweet.find(params[:tweet_id])

    @new_comment = Comment.new(comment_params)

    @new_comment.tweet = @tweet

    @new_comment.user = current_user



    if @new_comment.valid?

      @new_comment.save!

      respond_to do |format|

        format.html { redirect_to tweet_path(@tweet) }

        format.js

      end

    else

      respond_to do |format|

        format.html { render "tweet/show" }

        format.js

      end

    end

  end



  private

  def comment_params

    params.require(:comment).permit(:text)

  end
end
