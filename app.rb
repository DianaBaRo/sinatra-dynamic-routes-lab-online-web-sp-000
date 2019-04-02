require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse!
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @url_number = params[:number].to_i
    @squared_number = @url_number * @url_number
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do |x|
      @phrase
    end
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      result = @number1 + @number2
      result.to_s
    when "subtract"
      @number1 - @number2
    when "multiply"
      @number1 * @number2
    when "divide"
      @number1 / @number2
    end
  end

end
