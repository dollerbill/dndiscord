Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'monster/list'
  get 'monster/new'
  post 'monster/create'
  patch 'monster/update'
  get 'monster/list'
  get 'monster/show'
  get 'monster/edit'
  get 'monster/delete'
  get 'monster/update'
end
