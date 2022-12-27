ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :email, :password, :password_confirmation, :phone, :address
  
  form title: 'New User' do |f|
    f.inputs 'User' do 
      f.input :name
      f.input :email
      f.input :phone
      f.input :address
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

 index title: "All Users" do
  selectable_column
    column 'ID' do |user|
      link_to user.id, user_path(user)
    end
     column :name
     column :email
     column :phone
     column :address
 end

end
