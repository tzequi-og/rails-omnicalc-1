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
get("/payment/new") do
  
  erb(:payment, { :layout => :layout })
end

get("/payment/results") do
  @apr = params.fetch(:apr).to_f
  @time = params.fetch(:time)
  @length = @time.to_i*12
  @principal = params.fetch(:principal).to_f
  @r = @apr/1200

  @numerator = @r*@principal
  @denominator = 1-(1+@r)**(-@length)
  @payment = (@numerator/@denominator)

  erb(:payment_results, { :layout => :layout })
end

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
