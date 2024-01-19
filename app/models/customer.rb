=begin
    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6


    Customer Model
=end


class Customer < ApplicationRecord
  has_one_attached :image

end
