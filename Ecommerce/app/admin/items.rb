ActiveAdmin.register Item do
  permit_params :name, :description, :price, :category_id, size_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :category
    column :sizes do |item|
      item.sizes.map(&:name).join(', ')
    end
    actions
  end


  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :category
      f.input :sizes, as: :check_boxes, collection: Size.all.map { |s| [s.name, s.id] }
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :price
      row :category
      row :sizes do |item|
        item.sizes.map(&:name).join(', ')
      end
    end
  end
end
