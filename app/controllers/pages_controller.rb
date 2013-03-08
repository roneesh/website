require 'open-uri'
require 'json'

class PagesController < ApplicationController
  def home
  end

  def shop
  end

  def portfolio
  end

  def about
  end

  def contact
    @message = Message.new
  end

  def send_message
    @message = Message.new(params["post"])
    if @message.valid?
      ContactMailer.message_email(@message).deliver
      flash[:message] = "Message sent to Roneesh"
      redirect_to "/contact"
    else
      flash[:message] = "Message was not valid, enter data in all fields"
      render '/contact'
    end
  end

  def twitter  
    @tweets = Twitter.user_timeline("roneesh", count: 100)
  end

  def writing
  end

  def blog
  end

  def solar_system
  end

  def login
  end

  def transforms
  end

  def lesson
    # @tracks = AWS::S3::Bucket.find(BUCKET).objects
    @lessons = Lesson.all
  end

  def facebook_oauth
      
      if params[:code]
        session[:code] = params[:code]
      end
      url = "http://localhost:3000/facebook_friends"
      secret = ENV["FB_APP_SECRET"]
      uri = "https://graph.facebook.com/oauth/access_token?client_id=441452829259667&redirect_uri=#{url}&client_secret=#{secret}&code=#{session[:code]}"
      @response = open(uri).read
      @access_token = @response.split('&').first.split('=').last

    if @access_token
      friends_url = "https://graph.facebook.com/me?fields=id,name,friends.fields(location)&access_token=#{@access_token}"
      response = open(friends_url).read
      @json = JSON.parse(response)
      @data = @json["data"]
    else 
      flash[:message] = "Access was denied, please try again."
    end

  end

end

