require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @persons_name = params[:name]
    "Goodbye, #{@persons_name}."
  end

  get "/multiply/:num1/:num2" do
    multiply = params[:num1].to_i * params[:num2].to_i
    "#{multiply}"
  end
  
end