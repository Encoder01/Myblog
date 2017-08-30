ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#permit_params :list, :of, :attributes, :on, :model
#
# or
#
  
  permit_params :title,:body, :body_description,:description_image,:category_id,:admin_user_id,:permalink
  controller do
    def find_resource
      Post.find_by_permalink( params[:id])
    end
  
  end
  
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
      f.input :permalink
    end
    div  do
      
      div  do
        f.label :Açıklama_resmi
        f.file_field :description_image, class: "form-control"
      end
      
      div class: "form-group" do
        f.label :İçerik_açıklaması
        f.text_area :body_description , class: "form-control", rows:"5"
      end
      
      div  do
        f.label :İçerik
        f.cktext_area :body , class: "form-control"
      end
    
    end
    f.actions
  end
  
  after_build do |currm|
    currm.admin_user = current_admin_user
    currm.reads_counter = 0
  end




end