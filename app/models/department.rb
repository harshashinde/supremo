class Department < ActiveRecord::Base
  belongs_to :head, :foreign_key => "head_id", :class_name => "User"
  has_many :tickets
end
