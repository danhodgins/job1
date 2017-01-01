Rails.application.routes.draw do

root 'jobs#index'

  # this makes the correct routes (did rake routes)
  # state_jobs GET    /states/:state_id/jobs(.:format)          jobs#index
  
  
  #if this: then <td><%= link_to job.title, [@state, job] %></td>
  resources :states do
    resources :cities
  end
  
  
  resources :states do
    resources :jobs
  end
  
  resources :cities do
    resources :jobs
  end
  
  resources :jobs
  
  
  

  get 'states/:id/cities' => 'states#update_cities'
  

  # could have done
  
  # Class States
  # has_many :cities
  #has_many :jobs, :through => :cities

  #Class Cities
  #belongs_to :state 

  
  #Class Jobs
  #belongs_to :cities 



  
  

  
 
  
 

  
  
  
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
