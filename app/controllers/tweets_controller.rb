class TweetsController < ApplicationController
  def index
    @tweets = Tweet.paginate(:page => params[:page], :per_page => 6)
  end
end
