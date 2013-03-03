Roneeshwebsite::Application.routes.draw do

  # Pages Controller Routes - Pages Controller is main site controller
  root :to => 'pages#home'

  get "pages/home"
  get "/home", { controller: "Pages", action: "home" }

  get "pages/shop"
  get "/shop", { controller: "Pages", action: "shop" }

  get "pages/portfolio"
  get "/portfolio", { controller: "Pages", action: "portfolio" }

  get "pages/about"
  get "/about", { controller: "Pages", action: "about" }

  get "pages/contact"
  get "/contact", { controller: "Pages", action: "contact" }
  post "/contact", { controller: "Pages", action: "send_message"}

  get "pages/twitter"
  get "/twitter", { controller: "Pages", action: "twitter" }

  get "pages/writing"
  get "/writing", { controller: "Pages", action: "writing" }

  get "pages/blog"
  get "/blog", { controller: "Pages", action: "blog" }

  get "pages/transforms"
  get "/transforms", { controller: "Pages", action: "transforms"}

  get "/lessons", {controller: "Pages", action: "lesson"}

  get "/solar_system", {controller: "Pages", action: "solar_system"}

  get "/login", {controller: "Pages", action: "login"}

  get "/facebook_friends", {controller: "Pages", action: "facebook_oauth"}

  #Shop controller routes

  get "/shop/tattoo", { controller: "Shop", action: "tattoo"}

  get "/shop/video", { controller: "Shop", action: "video"}

  #Portfolio controller routes

  get "portfolio/physical"

  get "portfolio/design"

  get "portfolio/architecture"

  get "portfolio/architecture_single_page"

  #Weather controller routes

  get "/weather", {controller: "Weather", action: "weather"}


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
