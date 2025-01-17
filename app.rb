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

  # get '/medicines' do

  # end

  # get '/medicines/:id' do
  #   @medicine = all_the_medicines.select do |med|
  #     med.id == params[:id]
  #   end.first
  #   erb :'/medicines/show.html'
  # end

  get '/goodbye' do

  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply' do
  end

  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    product = @num1*@num2
    "#{product}"
  end


end