Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts,path:  "Konular"
  resources :categories ,path: "kategori" do
    resources :posts
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
