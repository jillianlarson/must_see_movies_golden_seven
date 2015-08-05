Rails.application.routes.draw do
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

  #DIRECTOR PAGES
  get("/directors",{:controller => "movies", :action => "index"})
  #CREATE
  get("/directors/new",{:controller => "movies", :action => "newdirect"})
  get("/directors/create",{:controller => "movies", :action => "createdirect"})

  #READ
  get("/directors/:id",{:controller => "movies", :action => "showdirect"})
  #UPDATE
  get("/directors/edit/:id",{:controller => "movies", :action => "editdirect"})
  get("/directors/update/:id",{:controller => "movies", :action => "updatedirect"})
  #DESTROY
  get("/directors/delete/:id", { :controller => "movies", :action => "destroyd" })

  #ACTOR PAGES
  get("/actors", {:controller => "movies", :action => "act"})

  get("/actors/new", {:controller => "movies", :action => "newact"})
  get("/actors/create", {:controller => "movies", :action => "createact"})

  get("/actors/:id", {:controller => "movies", :action => "showact"})

  get("/actors/edit/:id", {:controller => "movies", :action => "editact"})
  get("/actors/update/:id", {:controller => "movies", :action => "updateact"})
  get("/actors/delete/:id", { :controller => "movies", :action => "destroya" })

  #MOVIE PAGES
  get("/movies", {:controller => "movies", :action => "rollfilm"})
  get("/movies/new", {:controller => "movies", :action => "newfilm"})
  get("/movies/create", {:controller => "movies", :action => "createfilm"})

  get("/movies/:id", {:controller => "movies", :action => "showfilm"})
  get("/movies/edit/:id", {:controller => "movies", :action => "editfilm"})
  get("/movies/update/:id", {:controller => "movies", :action => "updatefilm"})
  get("/movies/delete/:id", { :controller => "movies", :action => "destroym" })

end
