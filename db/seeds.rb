=begin

    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6

    Adding test sample data in DB

=end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'jsobremonte@rrc.ca', password: 'Secret555', password_confirmation: 'Secret555') if Rails.env.development?

# Creating sample customers (Diablo II Reference)
Customer.create!(full_name: "Andariel", phone_number: "666-666-6666", email_address: "andariel@diablo.com", notes: "Act I Boss")
Customer.create!(full_name: "Duriel", phone_number: "666-666-6666", email_address: "duriel@diablo.com", notes: "Act II Boss")
Customer.create!(full_name: "Mephisto", phone_number: "666-666-6666", email_address: "mephisto@diablo.com", notes: "Act III Boss")
Customer.create!(full_name: "Diablo", phone_number: "666-666-6666", email_address: "diablo@diablo.com", notes: "Act IV Boss")
Customer.create!(full_name: "Baal", phone_number: "666-666-6666", notes: "Act V Boss")