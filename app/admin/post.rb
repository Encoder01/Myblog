ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 #permit_params :list, :of, :attributes, :on, :model
#
# or
#
  
  permit_params :title,:body, :body_description,:description_image,:category_id,:admin_user_id


  index do
    selectable_column
    id_column
    column :created_at
    column :title
    column :username
    column :reads_counter
    actions
  end

  filter :admin_user_id
  filter :title
  filter :body_description
  filter :created_at

  form do |f|
    f.select(:category_id,Category.all.map {|f| [f.name,f.id]},{include_blank: "Kategori Seçin"},{ class: "form-control" })
    f.inputs do
      f.input :title , class: "form-control"
    end
    div class: "row" do
    
    div class:"col-md-12" do
      f.label :İçerik
      f.cktext_area :body , class: "form-control"
    end
    
    
    div class:"col-md-12" do
      f.label :İçerik_açıklaması
      f.cktext_area :body_description , class: "form-control"
    end
   
    div class:"col-md-12" do
      f.label :Açıklama_resmi
      f.file_field :description_image, class: "form-control"
    end
  end
    
    f.actions
  end

  after_build do |currm|
    currm.admin_user = current_admin_user
    currm.reads_counter = 0
  end

  
  

end
