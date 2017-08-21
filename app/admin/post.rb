ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 #permit_params :list, :of, :attributes, :on, :model
#
# or
#
  
  permit_params :title,:body, :body_description,:description_image,:admin_user_id,:category_id

  index do
    selectable_column
    id_column
    column :admin_user_id
    column :title
    column :body_description
    column :created_at
    actions
  end

  filter :admin_user_id
  filter :title
  filter :body_description
  filter :created_at

  form do |f|
    @post = AdminUser.all.map(&:id)
    @category = Category.pluck(:id)
    f.select(:admin_user_id,[@post],{include_blank: "Admini Seçin"},{ class: "form-control" })
    f.select(:category_id,[@category],{include_blank: "Kategori Seçin"},{ class: "form-control" })
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
      f.cktext_area :description_image, class: "form-control"
    end
  end
    
    f.actions
  end

  

  
  

end
