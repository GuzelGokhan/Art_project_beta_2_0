class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def default_url_options
  #   { host: ENV["DOMAIN"] || "localhost:3000" }
  #  good if you set this on heroku :
  #  heroku config:set DOMAIN=www.my_product.com
  # end
end
