class CalculationsController < ApplicationController
  def flexible_square
    @num = params["num"].to_f
    render("calculations/flexible_square.html.erb")
  end
  def flexible_square_root
    @num = params["num"].to_f
    render("calculations/flexible_square_root.html.erb")
  end
  def flexible_payment
    @principal = params["amt"].to_f
    @apr = params["apr"].to_f / 100
    @years = params["terms"].to_f
    @payment = @principal*((@apr/100/12)*(1+(@apr/100/12))**(@years*12))/(((1+(@apr/100/12))**(@years*12))-1)
    render("calculations/flexible_payment.html.erb")
  end
end
