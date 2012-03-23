RMTest::Application.routes.draw do
  
  match "users/send_message/:id" => 'users#send_message'
  
  match "users/send_message.:id" => 'users#send_message'
  
  match "users/message/:id/edit" => 'messages#edit'
   
  match 'users.:id' => 'users#show'
  
  match 'reviews/new.:id' => 'reviews#new'
  
  match "programs/create_review.:id" => 'programs#create_review'

  resources :messages

  resources :reviews

  devise_for :users
  
  resources :users do 
    post :send_message, :on => :collection
  end
  

  resources :programs do
  	resources :reviews
  	post :create_review, :on => :collection
  	end
  	

  resources :organizations do
    resources :comments

  end

  get "pages/home"

 root :to => 'pages#home'



# The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
