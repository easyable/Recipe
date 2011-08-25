class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  validates :ingredients, :presence => true
  
  belongs_to :user
  has_many :ingredients, :dependent => :destroy  
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  
  def self.search(search)
    if search      
       where('title LIKE ? OR recipe_kind LIKE ?', "%#{search}%", "%#{search}%")
    else
       find(:all)
    end
  end
    
  def owned_by?(owner) 
      return false unless owner.is_a? User 
      user == owner
  end
end                      

