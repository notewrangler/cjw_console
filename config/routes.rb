Rails.application.routes.draw do

  

    # get 'categories/:product_id', to: 'categories#index', as: 'categories'    
    # get 'sub_1/:id', to: 'categories#sub_1', as: :sub_1
    # get 'sub_2/:id',  to: 'categories#sub_2', as: :sub_2
    # get 'sub_3/:id', to: 'categories#sub_3', as: :sub_3
    # get 'sub_4/:id', to: 'categories#sub_4', as: :sub_4
    # get 'sub_5/:id', to: 'categories#sub_5', as: :sub_5
    # get 'last/:id',  to: 'categories#last',  as: :last
 
  get 'main/:product_id/', to: 'categories#main', as: :main
  get 'sub_1/:id/:product_id', to: 'categories#sub_1', as: :sub_1
  get 'sub_2/:id/:product_id', to: 'categories#sub_2', as: :sub_2
  get 'sub_3/:id/:product_id', to: 'categories#sub_3', as: :sub_3
  get 'sub_4/:id/:product_id', to: 'categories#sub_4', as: :sub_4
  get 'sub_5/:id/:product_id', to: 'categories#sub_5', as: :sub_5
  get 'last/:id/:product_id',  to: 'categories#last',  as: :last
  put 'assign_ebay_category/:id/:product_id', to: 'categories#assign_ebay_category', as: :assign_ebay_category
           

  

  resources :products do 
    member do
      get 'listing_specifics', to: 'products#listing_specifics', as: :listing_specifics
    end 
        
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
