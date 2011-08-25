class Mailer < ActionMailer::Base
  default :from => "easyable01@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    #How to add an attachment
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered for Recipes.com")
  end
  
  def interest(contact_params)
      @name = contact_params[:name]
      @email = contact_params[:email]
      @message = contact_params[:message]
      mail(:to => "Gene Awot <easyable01@gmail.com", :subject=>"Message from Recipes contact form")
  end    
end
