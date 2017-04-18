Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:num", {:controller => "calculations", :action => "flexible_square"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flexible_square_root"})
  get("/flexible/payment/:apr/:terms/:amt", {:controller => "calculations", :action => "flexible_payment"})
end
