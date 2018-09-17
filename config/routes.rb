Rails.application.routes.draw do
  
  get 'expenses/new'

  get 'expenses/create'

  get 'expenses/index'

  get 'expenses/show'

  get 'expenses/edit'

  get 'expenses/destroy'

  get '/login'  => 'session#new' # login form
  post '/login' => 'session#create' # check credentials and attempt login (set session)
  delete '/login' => 'session#destroy' # log out destroy the session

  post '/invoices/import' => 'invoices#import_invoices', :as => "invoices_import"

  resources :users, :projects, :invoices, :vendors



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
