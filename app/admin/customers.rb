=begin

    Name: Jezreelson Sobremonte
    Course: WEBD-3008 (248294)
    Instructor: Jonathan Boisvert
    Challenge 6


    Customers on Admin (Testing the image uploading)

=end

ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  index do
    selectable_column
    column :full_name, sortable: :full_name
    column :email_address, sortable: :email_address
    column :phone_number, sortable: :phone_number
    column :notes
    column :image do |customer|
      if customer.image.attached?
        div style: "height: 50px; width: 50px; overflow: hidden; border-radius: 50%;" do
          image_tag customer.image, style: "height: auto; width: 100%;"
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end
end
