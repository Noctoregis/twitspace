class WelcomeController < ApplicationController
  def index
    if (defined? result_type == "nil")
      @result_type = "recent"
    end
    if (@result_type == "recent")
      @tweet_news = Tweet::get_latest
    else
      @tweet_news = Tweet::get_latest_popular
      @result_type = "popular"
    end
  end
end
