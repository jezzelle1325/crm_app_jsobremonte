=begin

    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6


    Customer Controller

=end

class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:full_name)
  end

  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
  end

  def customer_params
    params.require(:customer).permit(:full_name, :phone_number, :email_address, :notes, :image)
  end

end
