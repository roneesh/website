class Message < ActiveRecord::Base
  attr_accessible :content, :email, :name

  validates_presence_of :name, :content, :email
  validates_length_of :content, maximum: 2000

end
