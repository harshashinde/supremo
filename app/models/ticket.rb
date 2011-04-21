class Ticket < ActiveRecord::Base
  belongs_to :assigned, :foreign_key => "assigned_to", :class_name => "User"
  belongs_to :owner, :foreign_key => "owners_id", :class_name => "User"
  has_many :comments
  belongs_to :department

  validates :title, :presence => true,:on => :create

 
  acts_as_audited :associated_with => :owner, :foreign_key => "owners_id", :class_name => "User"
  acts_as_audited :associated_with => :assigned, :foreign_key => "assigned_to", :class_name => "User"

  



 
end
