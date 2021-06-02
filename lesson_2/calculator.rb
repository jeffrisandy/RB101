# ask the user for two numbers
# ask the user for an operation to perform
# perform operation on the two number
# output the result

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def integer?(num)
  Integer(num) rescue false
end

def float?(num)
  Float(num) rescue false 
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def get_number(msg)
  loop do
    prompt(msg)
    num = Kernel.gets.chomp
    if valid_number?(num)
      if integer?(num)
        return num.to_i
      else
        return num.to_f
      end
    else
      prompt("It does not look like a number")
    end
  end
end

def operation_to_msg(operator)
  msg = case operator
        when "1"
          "Adding"
        when "2"
          "Substracting"
        when "3"
          "Multiplying"
        when "4"
          "Dividing"
        end

  msg
end

prompt("Welcome to Calculator! Enter your name:")

name = ""
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name!.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  num1  = get_number("What's the first number?")
  num2  = get_number("What's the second number?")
  operator_prompt = <<-MSG
  What operation would you like to perform? 
    1) Add 
    2) Substract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)
  operator = ""

  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1 2 3 or 4")
    end
  end

  prompt("#{operation_to_msg(operator)} the two numbers....")

  case operator
  when "1"
    result = num1 + num2
  when "2"
    result = num1 - num2
  when "3"
    result = num1 * num2
  when "4"
    result = num1.to_f / num2.to_f
  end

  prompt("The result is #{result}")

  prompt("Continue? (Y to calculate again)")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you. Bye!")
