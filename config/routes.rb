Rails.application.routes.draw do
  get "/", controller: "calculator", action: "home_page"
  get "/square/new", controller: "calculator", action: "square_new"
  get "/square/results", controller: "calculator", action: "square_results"
  get "/square_root/new", controller: "calculator", action: "sqrt_new"
  get "/square_root/results", controller: "calculator", action: "sqrt_results"
  get "/payment/new", controller: "calculator", action: "payment_new"
  get "/payment/results", controller: "calculator", action: "payment_results"
end

=begin
get("/random/new") do
  
  erb(:random, { :layout => :layout })
end

get("/random/results") do
  @min = params.fetch(:floor).to_f
  @max = params.fetch(:ceiling).to_f
  @variable = rand(@min..@max)

  erb(:random_results, { :layout => :layout })
end

=end
