Rails.application.routes.draw do
  root 'welcome#hello'
  resources :articles

 
end
