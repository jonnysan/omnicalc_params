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
  def flexible_random
    @lo = params["lo"].to_f
    @hi = params["hi"].to_f
    @rand = @lo + rand(@hi - @lo + 1)
    render("calculations/flexible_random.html.erb")
  end
  def square_form
    render("calculations/square_form.html.erb")
  end
  def square
    @num = params[:num].to_f
    render("calculations/square.html.erb")
  end
  def sqrt_form
    render("calculations/sqrt_form.html.erb")
  end
  def sqrt
    @num = params[:num].to_f
    render("calculations/sqrt.html.erb")
  end

  def pmt_form
    render("calculations/pmt_form.html.erb")
  end
  def pmt
    @principal = params["pri"].to_f
    @apr = params["apr"].to_f
    @years = params["yrs"].to_f
    @payment = @principal*((@apr/100/12)*(1+(@apr/100/12))**(@years*12))/(((1+(@apr/100/12))**(@years*12))-1)
    render("calculations/pmt.html.erb")
  end
  def ran_form
    render("calculations/ran_form.html.erb")
  end
  def ran
    @lo = params["min"].to_f
    @hi = params["max"].to_f
    @rand = @lo + rand(@hi - @lo + 1)
    render("calculations/ran.html.erb")
  end
end
