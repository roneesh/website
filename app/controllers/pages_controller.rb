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

  def lesson
    # @tracks = AWS::S3::Bucket.find(BUCKET).objects
    @lessons = Lesson.all
  end

end

