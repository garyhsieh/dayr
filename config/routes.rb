Dayr::Application.routes.draw do
  resources :discussions do
    resources :comments
  end

  resources :advice_messages do
    resources :comments
  end

  resources :additional_informations

  # resources :profiles, :only => [:show]
  match '/profiles/:username' => 'profiles#show', :as => :profile

  resources :assignments do
    member do
      post 'complete'
    end
    resources :comments
  end

  devise_for :users, :controllers => { :registrations => "users/registrations" }
             
  resources :completions

  resources :challenges 

  match "private" => "home#private"
  match "/about" => "home#about"
  match "/quiz1" => "home#quiz1"
  match "/quiz2" => "home#quiz2"
  match "/quiz3" => "home#quiz3"
  match "/quiz4" => "home#quiz4"
  match "/feeding_my_older_baby" => "home#feeding_my_older_baby"
  match "/my_babys_first_foods" => "home#my_babys_first_foods"
  match "/what_is_my_baby_telling_me" => "home#what_is_my_baby_telling_me"
  match "/is_your_baby_shy_flexible_or_fiesty" => "home#is_your_baby_shy_flexible_or_fiesty"
  match "/parents_provide_baby_decides" => "home#parents_provide_baby_decides"
  match "/my_plan_for_feeding_my_baby" => "home#my_plan_for_feeding_my_baby"    
  match "/breastfeed_rap" => "home#breastfeed_rap"    

  root :to => "home#index"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
