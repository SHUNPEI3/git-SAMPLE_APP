Rails.application.routes.draw do

  # ############################################################
  get 'lists/new'  => 'lists#new',as: 'new_list'
  post 'lists' => 'lists#create'
  # ############################################################
  get 'lists' => 'lists#index',as: 'list_index'
  # ############################################################
  get 'lists/:id' => 'lists#show',as: 'list'
  # ############################################################
  get 'lists/:id/edit' => 'lists#edit',as: 'edit_list'
  patch 'lists/:id' => 'lists#update'
  # ############################################################
  delete 'lists/:id' => 'lists#destroy',as: 'destroy_list'
  # ############################################################
  get '/top' => 'homes#top'
end
