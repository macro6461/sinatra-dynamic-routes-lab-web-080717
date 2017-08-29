require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    answer = ""
    @n.times do
      answer += @phrase
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} " + "#{@word2} "+ "#{@word3} " + "#{@word4} " + "#{@word5}."
  end

  get '/:operation/:number1/:number2' do

    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    answer = 0

    if params[:operation] == 'add'
      answer += (@num1 + @num2)
    elsif params[:operation] == 'subtract'
      answer += (@num1 - @num2)
    elsif params[:operation] == 'multiply'
      answer += (@num1 * @num2)
    elsif params[:operation] == 'divide'
      answer += (@num1.to_f / @num2)
    end
    "#{answer.round(2)}"
  end
end
