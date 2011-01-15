# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
user = User.create :email => 'eawot@msn.com', 
                   :password => 'secret',
                   :password_confirmation => 'secret'    
                   
profile = Profile.create(:name =>"Nancy Awot", :color => "green")
