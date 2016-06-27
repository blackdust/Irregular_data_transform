Rails.application.routes.draw do
  get 'transfer'=>'irregular_data_transforms#transfer_page'
  post 'transfer_action'=>'irregular_data_transforms#transfer_action'
  get 'lists'=>'irregular_data_transforms#transform_lists'



  resources :irregular_data_transforms do
    collection do
      get 'graphviz'
      get 'graphviz_to_gml'
      post 'graphviz_to_gml_progarm'

      post 'convert'
      post 'save_file_to_local'
      get 'down_load'

      get 'save_and_query_jsons'
      post 'query_json'
      post 'query_A_to_B'
      post 'query_A_to_B_with_length'
      post 'query_all_port_before_A'
      post 'query_all_port_after_A'
      get 'xml2json'
      get 'opml2graphviz'
      get  'query_mind_photograph'
      get 'match_words'
    end
  end

  resources :json_datas do
    collection do
      post 'page_create'
      post 'enter_data'
      get 'query_json'
    end
  end

  resources :match_words do
    collection do
      get 'insert_word'
      post 'insert_word_list'
      delete 'delete_word'
      get 'article'
      post 'article_insert'
      post 'analysis_article'
      post 'save_combination'
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
