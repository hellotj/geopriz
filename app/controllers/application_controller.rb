class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_filter :load_tweets

  include ApplicationHelper

  def load_tweets
  	client = Twitter::REST::Client.new do |config|
		  config.consumer_key = 'xBkm5bsdD9LjZ5oCn661mCh2Q'
		  config.consumer_secret = 'boQx9WjiHboJYyEnSpHiohPwqgypZrRhxyRtpgwHyGRzjQ8C9o'
		  config.access_token = '74282467-2qwuw312kRAGSCuQwtxQx3UAwQswAvbmfjRHU3VAA'
		  config.access_token_secret = 'dS9MlX9mhNd5AXEKztvTNyQpnUJMcHmdCAHMJ4zpeW9nZ'
		end

   
   
    @tweets = client.user_timeline




  end

end