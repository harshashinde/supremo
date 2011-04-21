class Ticket < ActiveRecord::Base
  #belongs_to :user
  belongs_to :assigned, :foreign_key => "assigned_to", :class_name => "User"
  belongs_to :owner, :foreign_key => "owner_id", :class_name => "User"
  has_many :comments
  belongs_to :department
  #has_associated_audits


  def assign_to_user(user_id)
    update_attribute(:assigned_to,user_id)
  end
end
