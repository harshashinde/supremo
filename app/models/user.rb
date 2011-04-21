class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable, :registerable,
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:firstname,:lastname,:department_id

  has_many :tickets, :foreign_key => "owners_id"
  has_one :department
  has_many :comments

  has_associated_audits

  
def full_name
  firstname+" "+lastname
end

end
