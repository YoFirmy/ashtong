ActiveAdmin.register Product do
  permit_params :name, :quantity, :image, :price, :batch_amount
  
  index do
    selectable_column
    column :id
    column :name
    column :quantity
    column :price
    column :batch_amount
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs :name, :quantity, :price, :batch_amount
    f.input :image, as: :file
    actions
  end

end
