SistemaControlDeRiesgos::Application.routes.draw do
  
  

 

  resources :users, :only => [:index, :new, :create, :edit, :update]
  devise_for :users

  get 'show_user/:id' => 'users#show_user', :as => 'show_user'
  match 'destroy_user/:id' => 'users#destroy_user', :as => 'destroy_user' 

  get 'welcomes/index'
  get 'criterios/revision/index' => 'criterios#revision_criterios', :as => 'revision_criterios'
  match 'criterios/new_criterio_gerente' => 'criterios#new_criterio_gerente', :as => 'new_criterio_gerente'
  get 'estado/:id' => 'criterios#estado', :as => 'estado_criterios'
  get 'estado_final/:id' => 'criterios#estado_final_criterio', :as => 'estado_final_criterio'
  get 'show_gerente/:id' => 'criterios#show_gerente', :as => 'show_gerente'
  get 'revision_final/index' => 'criterios#revision_final', :as => 'revision_final'
  get 'show_observaciones/:id' => 'criterios#show_observaciones', :as => 'show_observaciones'
  get 'show_criterio_final/:id' => 'criterios#show_criterio_final', :as => 'show_criterio_final'

  get 'alcance_limitaciones/revision/index' => 'alcance_limitaciones#revision_alcances_limitaciones', :as => 'revision_alcances_limitaciones'
  get 'estado_alcance_limitacion/:id' => 'alcance_limitaciones#estado', :as => 'estado_alcances_limitaciones'
  get 'show_gerente_alcance_limitacion/:id' => 'alcance_limitaciones#show_gerente_alcance_limitacion', :as => 'show_gerente_alcance_limitacion'
  get 'estado_final_alcances_limitaciones/:id' => 'alcance_limitaciones#estado_final_alcances_limitaciones', :as => 'estado_final_alcances_limitaciones'
  get 'revision_final_alcances_limitaciones/index' => 'alcance_limitaciones#revision_final_alcances_limitaciones', :as => 'revision_final_alcances_limitaciones'
  get 'show_observaciones_alcances_limitaciones/:id' => 'alcance_limitaciones#show_observaciones_alcances_limitaciones', :as => 'show_observaciones_alcances_limitaciones'

  get 'amenazas/index'
  get 'show_activo/:id' => 'amenazas#show_activo', :as => 'show_activo'
  get 'show_amenazas/:id' => 'amenazas#show_amenazas', :as => 'show_amenazas'

  get "vulnerabilidads/index"
  get 'show_amenaza/:id' => 'vulnerabilidads#show_amenaza', :as => 'show_amenaza'
  get 'show_vulnerabilidades/:id' => 'vulnerabilidads#show_vulnerabilidades', :as => 'show_vulnerabilidades'

  get 'consecuences/index'
  get 'show_vulnerabilidad/:id' => 'consecuences#show_vulnerabilidad', :as => 'show_vulnerabilidad'
  get 'show_consecuences/:id' => 'consecuences#show_consecuences', :as => 'show_consecuences'

  get 'administrar_usuario/index'
  get 'administrar_usuario' => 'administrar_usuario#index', :as => 'administrar_usuario'
  get 'show_administrar_usuario/:id' => 'administrar_usuario#show_administrar_usuario', :as => 'show_administrar_usuario'
  get 'new' => 'administrar_usuario#new', :as => 'new_usuario'

  get "evaluacions/index"
  get 'evaluar_consecuencia/:id' => 'evaluacions#evaluar_consecuencia', :as => 'evaluar_consecuencia'
  get 'show_consecuencia/:id' => 'evaluacions#show_consecuencia', :as => 'show_consecuencia'
  get 'show_vul/:id' => 'evaluacions#show_vul', :as => 'show_vul'

  root :to => 'welcomes#index'
  
  resources :criterios do
    resources :observacions
  end

  resources :alcance_limitaciones do
    resources :observacion_alcance_limitacions
  end

  resources :activos do
    resources :amenazas
  end
  
  resources :amenazas do
    resources :vulnerabilidads
  end

  resources :vulnerabilidads do
    resources :consecuences
  end
 resources :consecuences do
    resources :evaluacions
 end

 resources :evaluacions
 resources :controles
 
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
