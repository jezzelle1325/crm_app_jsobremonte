=begin

    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6


  Admin User Model

=end

class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

def self.ransackable_attributes(auth_object = nil)
       %w[id email created_at updated_at]
end

end
