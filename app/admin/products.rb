ActiveAdmin.register Product do
  permit_params :name, :quantity, :image
  
  index do
    selectable_column
    column :id
    column :name
    column :quantity
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs :name, :quantity
    f.input :image, as: :file
    actions
  end

end
