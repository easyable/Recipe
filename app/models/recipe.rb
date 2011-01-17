class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  
  belongs_to :user
  has_many :ingredients, :dependent => :destroy  
  accepts_nested_attributes_for :ingredients, :allow_destroy => true
  
  scope :where_title, lambda { |term| where("recipes.title LIKE ?", "%#{term}%")}

    def self.search(search)
      if search      
        find(:all, :conditions => ['title LIKE ? and recipe_kind LIKE ?', "%#{search}%", "%#{search}%"])
      else
        find(:all)
      end
    end  
end                       

