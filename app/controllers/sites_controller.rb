class SitesController < ApplicationController


  def home 
    @title = "Home"
  end
  
  def recipes
    @title = "Recipe"
  end
  
  def about
    @title = "About"
  end
  
  def services
    @title = "Services"
  end
  
  def contact
  @title = "Contact"
  @current_user = current_user
  if request.post?
    Mailer.interest(params[:contact]).deliver
    flash[:notice] = "Message sent!" 
    redirect_to :action => 'contact'
  end
  end
end        
