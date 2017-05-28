class Tweet < ActiveRecord::Base

  MY_APPLICATION_NAME = "TweetSpace_Ingesup"
  
  private
    def self.client
      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "Gzm6I93ZW8sR2LMbCpod7HOnf"
        config.consumer_secret     = "nIOyQmzYq2wnwYMvaNHjhNutjqXnD2uTNFbvsph5KpsqxdHtJ7"
        config.access_token        = "440215471-ViSDu9rTcC9OzWKmgq5cJRryALIOaJdxh28j3N0g"
        config.access_token_secret = "xOkniXd5Pvg0QJLXxmtWbIou5wmq2aOJRZUhWy7mVMIXA"
      end
    end

  public
    def self.get_latest
      #cette méthode ne retourne rien...
      tweets = client.home_timeline(:page => 20, :count => 200)
      tweets.each do |t|
        puts(t.text)
      end
    end

    def self.get_latest_popular
      search_options = {
        result_type: "popular",
        from: "Space_Station",
        filter: "images",
        media: "true",
        tweet_mode: 'extended',
        count: 12
      }
      tweets = client.search("", search_options).take(12)
      end

  has_many :comments
  has_many :likes
end

