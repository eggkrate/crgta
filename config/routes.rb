ActionController::Routing::Routes.draw do |map|

  map.signup 'signup', :controller => 'users', :action => 'new'
  map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
  map.login 'login', :controller => 'user_sessions', :action => 'new'
  map.resources :user_sessions
  map.resources :users

  map.root :controller => 'pages', :action => 'index'

  map.resources :news_items

  map.resources :pages #':category/:id', :controller => 'pages', :action => 'show'

  map.namespace :admin do |admin|
    admin.resources :pages
    admin.resources :news_items
  end

end
