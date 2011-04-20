# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

if Department.count == 0
  Department.create(:name => "HR", :head => 1, :activated => true)
  Department.create(:name => "IT", :head => 2, :activated => true)
  Department.create(:name => "Admin", :head => 3, :activated => true)
end