Memo::Application.routes.draw do
  
  root to: "top#index"
  #root :to => 'top#index'
  
  resources :memopads do
    
  end

end
