class ContactMailer < ActionMailer::Base
  # default from: "from@example.com"

  def message_email(message)
    @name = message.name
    @email  = message.email
    @content = message.content
    mail(:to => "roneesh@gmail.com", :from => @email, :subject => "A Message from #{@name}")
  end
end
