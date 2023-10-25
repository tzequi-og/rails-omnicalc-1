class CalculatorController < ApplicationController

  def home_page
    render template: "calc_templates/home"
  end
end
