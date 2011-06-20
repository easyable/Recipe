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
  end
end        
