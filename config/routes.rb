Rails.application.routes.draw do

  devise_for :users
  get "/", to: "pages#index", as: :root
  post "/", to: "pages#create", as: false

  get "/como-funciona", to: "pages#about", as: :about

  get "/top-ideias", to: "pages#top_idea", as: :top_idea
  get "/top-ideias/:id", to: "pages#update_like", as: :update_like
  get "/top-ideias2/:id", to: "pages#update_nlike", as: :update_nlike

  get "/nova-ideia", to: "pages#new_idea", as: :new_idea

  get "/ideia/:id", to: "pages#show", as: :show
  patch "/ideia/:id", to: "pages#update", as: :update
  get "/edit/idea/:id", to: "pages#edit", as: :edit
  patch "/edit/idea/:id", to: "pages#update_idea", as: :update_idea
  get "/delete/:id", to: "pages#delete", as: :delete

  get "/perfil/:id", to: "user#perfil", as: :perfil

  get "/ideias", to: "user#user_ideas", as: :user_ideas

  get "/off-collaborate", to: "user#collaborate", as: :collaborate




  


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
