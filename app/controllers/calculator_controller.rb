class CalculatorController < ApplicationController

  def home_page
    render template: "calc_templates/home"
  end

  def square_new
    render template: "calc_templates/square_new"
  end

  def square_results
    @number = params.fetch(:number)
    @square = @number.to_f ** 2

    render template: "calc_templates/square_results"
  end
  
  def sqrt_new
    render template: "calc_templates/sqrt_new"
  end

  def sqrt_results
    @number = params.fetch(:number)
    @square_root = @number.to_f ** 0.5

    render template: "calc_templates/sqrt_results"
  end

  def payment_new
    render template: "calc_templates/payment_new"
  end

  def payment_results
    @apr = params.fetch(:apr).to_f
    @time = params.fetch(:time)
    @length = @time.to_i*12
    @principal = params.fetch(:principal).to_f
    @r = @apr/1200

    @numerator = @r*@principal
    @denominator = 1-(1+@r)**(-@length)
    @payment = (@numerator/@denominator)
    
    render template: "calc_templates/payment_results"
  end
end
