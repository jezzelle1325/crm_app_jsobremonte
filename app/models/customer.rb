=begin
    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6


    Customer Model
=end


class Customer < ApplicationRecord
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ['full_name', 'phone_number', 'email_address', 'notes']
  end

  def self.ransackable_associations(auth_object = nil)
    ['image_attachment', 'image_blob']
  end

  def self.ransackable_attributes(auth_object = nil)
    super - ['id']
  end
end

