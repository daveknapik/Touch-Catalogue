# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Admin.create! :login => 'Mike', :password => 'touch33', :password_confirmation => 'touch33'
Admin.create! :login => 'Dave', :password => 'touch33', :password_confirmation => 'touch33'
Admin.create! :login => 'Philip', :password => 'touch33', :password_confirmation => 'touch33'