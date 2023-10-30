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
end
