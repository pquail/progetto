ActiveAdmin.register Product do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :category
      f.input :name
      f.input :price
      f.input :description
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:thumb))
    end
    f.buttons
  end
end
