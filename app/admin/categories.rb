ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :image,  :feature

  form title: 'New Category' do |f|
    f.inputs 'Category' do 
      f.input :name
      f.input :image, as: :file
      f.input :feature, as: :text
    end
    f.actions
  end
  
  index title: 'All Category' do
   column "Image" do |category|
       image_tag category.image, class: 'my_image_size'
    end
   column :name
    column :feature
    column do |category|
      link_to "Edit", edit_category_path(category)
    end
    column do |category|
      link_to "Delete", category_path(category), method: :delete, data: { confirm: 'Are you certain you want to delete this?' }
    end
   end



end
