Rails.application.routes.draw do
  
  get 'admin/index'
  get 'admin/login'
  get 'admin/takecredentials'
  get 'admin/destroy'
  #resources :widgets
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
	resources :admin
	controller :admin do
    get 'login' => :new
    post 'admin/login' => :takecredentials
    get 'logout' => :destroy
  end
	
	resources :courses
	post "courses/search", to: "courses#search" 

	root to: "courses#index"
   
end
