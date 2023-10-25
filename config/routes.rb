Rails.application.routes.draw do
  get "/", controller: "calculator", action: "home_page"

end
