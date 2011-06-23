class Mailer < ActionMailer::Base
  default :from => "easyable01@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    #How to add an attachment
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered for JRSFund.com")
  end
  
  def interest(contact)
      @name = contact[:name]
      @email = contact[:email]
      @message = contact[:message]
      mail(:to => "Gene Awot <easyable01@gmail.com", :subject=>"Message from website contact form")
  end    
end
