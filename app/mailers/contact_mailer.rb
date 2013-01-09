class ContactMailer < ActionMailer::Base
  # default from: "from@example.com"

  def message_email(message)
    @name = message.name.delete(' ').downcase
    @email  = message.email
    mail(:to => "roneesh@gmail.com", :from => @email, :subject => "A Message from #{Message.name}")
  end
end
