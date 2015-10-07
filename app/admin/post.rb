ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :content, :category_id, :author_id, :cover
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

form do |f|
  f.inputs do
    f.input :title
    f.input :description
    f.input :content, :as => :ckeditor
    f.select :category_id
    f.select :author_id
    f.file :cover
  end
end
end
