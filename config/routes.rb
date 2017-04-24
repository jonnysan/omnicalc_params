Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:num", {:controller => "calculations", :action => "flexible_square"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flexible_square_root"})
  get("/flexible/payment/:apr/:terms/:amt", {:controller => "calculations", :action => "flexible_payment"})
  get("/flexible/random/:lo/:hi", {:controller => "calculations", :action => "flexible_random"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})
  get("/square_root/new", {:controller => "calculations", :action => "sqrt_form"})
  get("/square_root/results", {:controller => "calculations", :action => "sqrt"})

  get("/payment/new", {:controller => "calculations", :action => "pmt_form"})
  get("/payment/results", {:controller => "calculations", :action => "pmt"})
  get("/random/new", {:controller => "calculations", :action => "ran_form"})
  get("/random/results", {:controller => "calculations", :action => "ran"})
end
