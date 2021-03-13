ActiveAdmin.register Product do
  permit_params :name, :quantity, :image, :price
  
  index do
    selectable_column
    column :id
    column :name
    column :quantity
    column :price
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs :name, :quantity, :price
    f.input :image, as: :file
    actions
  end

end
