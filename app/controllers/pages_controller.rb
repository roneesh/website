require 'open-uri'

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

  end

  def twitter  
    @tweets = Twitter.user_timeline("roneesh", count: 100)
  end

  def writing
  end

  def blog
  end

end
